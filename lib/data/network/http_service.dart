import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'token_interceptor.dart';
import '../../core/app_constants.dart';

class HttpService {
  Dio client({bool requireAuth = false}) {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
      ),
    )..interceptors.add(TokenInterceptor(requireAuth: requireAuth));
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(request: true, requestBody: true, responseBody: true),
      );
    }
    return dio;
  }
}
