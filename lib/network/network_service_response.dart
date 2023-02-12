import 'package:flutter_scorecard/core/exceptions/not_found_exception.dart';

class NetworkServiceResponse<T> {
  T? content;
  bool success;
  String? message;
  int? code;

  CustomException get exception {
    return CustomException(message, code: code);
  }

  NetworkServiceResponse({
    this.content,
    this.success = false,
    this.message,
    this.code,
  });
}

class MappedNetworkServiceResponse<T> {
  dynamic mappedResult;
  NetworkServiceResponse<T> networkServiceResponse;
  MappedNetworkServiceResponse(
      {this.mappedResult, required this.networkServiceResponse});
}
