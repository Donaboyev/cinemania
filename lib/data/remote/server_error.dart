import 'package:dio/dio.dart';

class ServerError implements Exception {
  int? _errorCode;
  String _errorMessage = '';

  ServerError.withError({required Object error}) {
    _handleError(error as DioException);
  }

  _handleError(DioException error) {
    _errorCode = error.response?.statusCode ?? 500;
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        _errorMessage = "Connection timeout";
        break;
      case DioExceptionType.sendTimeout:
        _errorMessage = "Connection timeout";
        break;
      case DioExceptionType.receiveTimeout:
        _errorMessage = "Connection timeout";
        break;
      case DioException.badResponse:
        {
          // if (error.message.contains('500')) {
          //   _errorMessage = "Server not working";
          //   break;
          // }
          if (error.response?.data['Error'] is Map<String, dynamic>) {
            _errorMessage = error.response!.data['Error']['Message'].toString();
          } else {
            _errorMessage = error.response!.data['Message'].toString();
          }
          break;
        }
      case DioExceptionType.cancel:
        _errorMessage = "Canceled";
        break;
      case DioExceptionType.unknown:
        _errorMessage = "Something wrong";
        break;
      default:
    }
    return _errorMessage;
  }

  int? getErrorCode() => _errorCode;

  String getErrorMessage() => _errorMessage;
}
