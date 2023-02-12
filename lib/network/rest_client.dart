import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client, Response;

import 'i_client.dart';
import 'network_service_response.dart';

// * RestClient for HTTP Requests

@Deprecated("Replaced by dio")
class RestClient implements IClient {
  Map<String, String>? authHeaders;
  Map<String, String> headers = {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.acceptHeader: 'application/json',
  };

  late Client _client;

  RestClient({Client? client}) {
    if (client == null) {
      _client = Client();
    } else {
      _client = client;
    }
    authHeaders = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    };
  }

// * Method for HTTP GET REQUEST
  @override
  Future<MappedNetworkServiceResponse<T>> getAsync<T>(String? resourcePath,
      {bool? customHeaders, Map<String, dynamic>? queryParams}) async {
    late dynamic response;
    try {
      response = await _client.get(
        Uri.parse(resourcePath!),
        headers: customHeaders == true ? authHeaders : headers,
      );
    } catch (e) {
      return MappedNetworkServiceResponse(
          networkServiceResponse: NetworkServiceResponse(
              success: false, message: response.data["error_message"]));
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
    if (customHeaders) {
      authHeaders!.putIfAbsent("Authorization", () => "Token (if any)");
    }
    final content = json.encoder.convert(data);
//    debugPrint(content);
    dynamic response;
    try {
      response = await _client.post(Uri(path: resourcePath),
          body: content,
          headers: customHeaders == true ? authHeaders : headers);
    } on SocketException catch (_) {
      return MappedNetworkServiceResponse<T>(
          networkServiceResponse: NetworkServiceResponse<T>(
              success: false,
              message:
                  "(${500}) Can't reach the servers, \n Please check your internet connection."));
    }

    return await processResponse<T>(response);
  }

  Future<MappedNetworkServiceResponse<T>> processResponse<T>(
      Response response) async {
    if (!(response.statusCode < HttpStatus.ok ||
        response.statusCode >= HttpStatus.multipleChoices)) {
      final resultClass = await compute(
          jsonParserIsolate as FutureOr<Map<String, dynamic>> Function(String),
          response.body);

      return MappedNetworkServiceResponse<T>(
          mappedResult: resultClass,
          networkServiceResponse: NetworkServiceResponse<T>(success: true));
    } else {
      final errorResponse = response.body;
      return MappedNetworkServiceResponse<T>(
          networkServiceResponse: NetworkServiceResponse<T>(
              success: false,
              message: "(${response.statusCode}) ${errorResponse.toString()}"));
    }
  }

// * JSON Decoding using Isolates
  static Map<String, dynamic>? jsonParserIsolate(String res) {
    return jsonDecode(res);
  }

  @override
  Future<MappedNetworkServiceResponse<T>> patchAsync<T>(
      String resourcePath, data,
      {bool customHeaders = false}) {
    throw UnimplementedError();
  }

  @override
  Future<MappedNetworkServiceResponse<T>> postFileAsync<T>(
      String resourcePath, data,
      {bool customHeaders = false}) {
    throw UnimplementedError();
  }

  @override
  Future<MappedNetworkServiceResponse<T>> deleteAsync<T>(String resourcePath,
      {bool? customHeaders, Map<String, dynamic>? queryParams}) {
    throw UnimplementedError();
  }
}
