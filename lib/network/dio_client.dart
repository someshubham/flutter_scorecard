import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io';

import 'package:flutter_scorecard/core/exceptions/not_found_exception.dart';

import 'index.dart';

// * RestClient for HTTP Requests

class DioClient implements IClient {
  Map<String, String>? authHeaders;
  Map<String, String> headers = {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.acceptHeader: 'application/json',
  };

  Dio? currentDio;

  CancelToken? _cancelToken;

  final socketExceptionMessage = "Internet not connected";

  DioClient({required Dio dio, CancelToken? cancelToken}) {
    currentDio = dio;
    if (cancelToken != null) {
      _cancelToken = cancelToken;
    }
    authHeaders = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    };
  }

// * Method for HTTP GET REQUEST
  @override
  Future<MappedNetworkServiceResponse<T>> getAsync<T>(String? resourcePath,
      {bool? customHeaders, queryParams}) async {
    dynamic response;
    try {
      response = await currentDio!.get(
        resourcePath!,
        cancelToken: _cancelToken ?? CancelToken(),
        queryParameters: queryParams,
        options: Options(
          headers: customHeaders == true ? authHeaders : headers,
        ),
      );
    } on SocketException catch (_) {
      return MappedNetworkServiceResponse<T>(
          networkServiceResponse: NetworkServiceResponse<T>(
        success: false,
        message: socketExceptionMessage,
        code: serverNotAvailableErrorCode,
      ));
    } catch (e) {
      if ((e as DioError).response?.statusCode == HttpStatus.badRequest) {
        return MappedNetworkServiceResponse(
            networkServiceResponse: NetworkServiceResponse(
                success: false, message: e.response!.data["error_message"]));
      }
      return catchError(e) as FutureOr<MappedNetworkServiceResponse<T>>;
    }

    return await processResponse<T>(response);
  }

  @override
  Future<MappedNetworkServiceResponse<T>> deleteAsync<T>(String resourcePath,
      {bool? customHeaders, queryParams}) async {
    dynamic response;
    try {
      response = await currentDio!.delete(
        resourcePath,
        cancelToken: _cancelToken ?? CancelToken(),
        queryParameters: queryParams,
        options: Options(
          headers: customHeaders == true ? authHeaders : headers,
        ),
      );
    } on SocketException catch (_) {
      return MappedNetworkServiceResponse<T>(
        networkServiceResponse: NetworkServiceResponse<T>(
          success: false,
          message: socketExceptionMessage,
          code: serverNotAvailableErrorCode,
        ),
      );
    } catch (e) {
      if ((e as DioError).response?.statusCode == HttpStatus.badRequest) {
        return MappedNetworkServiceResponse(
            networkServiceResponse: NetworkServiceResponse(
                success: false, message: e.response!.data["error_message"]));
      }
      return catchError(e) as FutureOr<MappedNetworkServiceResponse<T>>;
    }

    return await processResponse<T>(response);
  }

// * Method for HTTP POST REQUEST
  @override
  Future<MappedNetworkServiceResponse<T>> postAsync<T>(
      String resourcePath, dynamic data,
      {bool customHeaders = false,
      bool isPlainFormat = false,
      Map<String, dynamic>? queryParams}) async {
    if (isPlainFormat) {
      currentDio!.options.contentType = "text/plain";
    }

    final content = isPlainFormat ? data : json.encoder.convert(data);
    dynamic response;
    try {
      response = await currentDio!.post(
        resourcePath,
        cancelToken: _cancelToken,
        data: content,
        queryParameters: queryParams,
      );
    } on SocketException catch (_) {
      developer.log(_.toString());
      return MappedNetworkServiceResponse<T>(
        networkServiceResponse: NetworkServiceResponse<T>(
          success: false,
          message: socketExceptionMessage,
          code: serverNotAvailableErrorCode,
        ),
      );
    } catch (e) {
      developer.log(e.toString());
      return catchError(e) as FutureOr<MappedNetworkServiceResponse<T>>;
    }

    return await processResponse<T>(response);
  }

  // * Method for HTTP POST REQUEST
  @override
  Future<MappedNetworkServiceResponse<T>> patchAsync<T>(
      String resourcePath, dynamic data,
      {bool customHeaders = false}) async {
    if (customHeaders) {
      authHeaders!.putIfAbsent("Authorization", () => "Token (if any)");
    }
    final content = json.encoder.convert(data);
    dynamic response;
    try {
      response = await currentDio!.patch(
        resourcePath,
        cancelToken: _cancelToken,
        data: content,
        options: Options(
          headers: customHeaders == true ? authHeaders : headers,
        ),
      );
    } on SocketException catch (_) {
      return MappedNetworkServiceResponse<T>(
        networkServiceResponse: NetworkServiceResponse<T>(
          success: false,
          message: socketExceptionMessage,
          code: serverNotAvailableErrorCode,
        ),
      );
    } catch (e) {
      developer.log(e.toString());
      return catchError(e) as FutureOr<MappedNetworkServiceResponse<T>>;
    }

    return await processResponse<T>(response);
  }

  @override
  Future<MappedNetworkServiceResponse<T>> postFileAsync<T>(
      String resourcePath, Object data,
      {bool customHeaders = false}) async {
    dynamic response;
    try {
      response = await currentDio!.post(
        resourcePath,
        data: data,
      );
    } on SocketException catch (_) {
      return MappedNetworkServiceResponse<T>(
        networkServiceResponse: NetworkServiceResponse<T>(
          success: false,
          message: socketExceptionMessage,
          code: serverNotAvailableErrorCode,
        ),
      );
    } catch (e) {
      developer.log(e.toString());
      return catchError(e) as FutureOr<MappedNetworkServiceResponse<T>>;
    }
    return await processResponse<T>(response);
  }

  MappedNetworkServiceResponse catchError(e) {
    final DioError err = e;
    late final int errorCode;
    const String problemMsg =
        "Problem connecting to the server. Please try again";
    String? message;
    if (DioErrorType.receiveTimeout == err.type ||
        DioErrorType.connectTimeout == err.type) {
      message =
          "Server is not reachable. Please verify your internet connection and try again";
      errorCode = serverNotAvailableErrorCode;
    } else if (e.message.contains('SocketException')) {
      message = socketExceptionMessage;
      errorCode = serverNotAvailableErrorCode;
    } else if (DioErrorType.response == err.type) {
      try {
        if (e.message.contains('SocketException')) {
          message = socketExceptionMessage;
          errorCode = serverNotAvailableErrorCode;
        } else if (err.response?.data['message'] != null &&
            err.response?.data['message']?.contains('Unable to find a quote')) {
          message = err.response?.data['message'];
          errorCode = noQuotesAvailableError;
        } else {
          message = problemMsg;
          errorCode = customError;
        }
      } catch (e) {
        message = problemMsg;
        errorCode = customError;
      }
    } else if (err.response?.statusCode.toString().startsWith("4") ?? false) {
      try {
        message = err.response?.data["error"]["message"] ?? problemMsg;
        errorCode = customError;
      } catch (e) {
        message = problemMsg;
        errorCode = customError;
      }
    } else {
      message = problemMsg;
      errorCode = customError;
    }
    return MappedNetworkServiceResponse(
        networkServiceResponse: NetworkServiceResponse(
      success: false,
      message: message,
      code: errorCode,
    ));
  }

  Future<MappedNetworkServiceResponse<T>> processResponse<T>(
      Response response) async {
    bool isResponseAnArray = false;
    bool statusCodeInSuccessRange = true;
    if (response.data is List<dynamic>) {
      isResponseAnArray = true;
    }
    if (!isResponseAnArray) {
      final statusCode = response.data["status_code"]?.toString() ?? "200";
      statusCodeInSuccessRange = statusCode.startsWith('20');
    }
    final isValidStatusCodeInResponseData = response.data != null &&
        (isResponseAnArray || statusCodeInSuccessRange);
    final isValidResponse = (response.statusCode.toString().startsWith('20')) &&
        isValidStatusCodeInResponseData;
    if (isValidResponse) {
      return MappedNetworkServiceResponse<T>(
        mappedResult: response.data,
        networkServiceResponse: NetworkServiceResponse<T>(success: true),
      );
    } else {
      final errorResponse = response.data;
      if (response.data["message"] != null &&
          response.data["status_code"] != null) {
        return MappedNetworkServiceResponse<T>(
          networkServiceResponse: NetworkServiceResponse<T>(
              code: response.data["status_code"],
              success: false,
              message: response.data["message"]),
        );
      }
      return MappedNetworkServiceResponse<T>(
          networkServiceResponse: NetworkServiceResponse<T>(
              success: false,
              message: "(${response.statusCode}) ${errorResponse.toString()}"));
    }
  }
}
