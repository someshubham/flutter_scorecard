import 'dart:convert';

import 'index.dart';

class MockClient implements IClient {
  @override
  Future<MappedNetworkServiceResponse<T>> getAsync<T>(String? resourcePath,
      {bool? customHeaders, Map<String, dynamic>? queryParams}) async {
    dynamic resultClass;
    // String rawString;

    return MappedNetworkServiceResponse<T>(
        mappedResult: resultClass,
        networkServiceResponse: NetworkServiceResponse<T>(success: true));
  }

  @override
  Future<MappedNetworkServiceResponse<T>> postAsync<T>(
      String resourcePath, data,
      {bool customHeaders = false,
      bool isPlainFormat = false,
      Map<String, dynamic>? queryParams}) async {
    dynamic resultClass;
    // String rawString;

    return MappedNetworkServiceResponse<T>(
        mappedResult: resultClass,
        networkServiceResponse: NetworkServiceResponse<T>(success: true));
  }

  // * JSON Decoding using Isolates
  static Map<String, dynamic>? jsonParserIsolate(String res) {
    return jsonDecode(res);
  }

  @override
  Future<MappedNetworkServiceResponse<T>> patchAsync<T>(
      String resourcePath, data,
      {bool customHeaders = false}) async {
    dynamic resultClass;
    // String rawString;

    return MappedNetworkServiceResponse<T>(
        mappedResult: resultClass,
        networkServiceResponse: NetworkServiceResponse<T>(success: true));
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
