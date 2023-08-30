
import 'package:dio/dio.dart';

import '../../core/app_constants.dart';

class TokenInterceptor extends Interceptor {
  final bool requireAuth;

  TokenInterceptor({required this.requireAuth});

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    final String token = AppConstants.apiKey;
    if (token.isNotEmpty && requireAuth) {
      options.queryParameters.addAll({'api_key': token});
    }
    handler.next(options);
  }
}
