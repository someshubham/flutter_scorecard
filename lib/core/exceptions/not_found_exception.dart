class NotFoundException implements Exception {
  @override
  String toString() {
    return "Nothing found";
  }
}

const int serverNotAvailableErrorCode = 500;
const int customError = 1;

/// Used only for lifi bridge
const int noQuotesAvailableError = 2;
const int backendError = 400;

class CustomException implements Exception {
  final String? message;
  final int errorCode;

  CustomException(this.message, {int? code}) : errorCode = code ?? 1;

  @override
  String toString() {
    return message ?? "Something Went Wrong";
  }
}
