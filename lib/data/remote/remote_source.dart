import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';

import 'server_error.dart';
import 'response_handler.dart';
import '../network/http_service.dart';
import '../models/movies_response.dart';

class RemoteSource {
  RemoteSource();

  Future<ResponseHandler<MoviesResponse>> getUpcomingMovies() async {
    dio.Response response;
    try {
      response = await Get.find<HttpService>()
          .client(requireAuth: true)
          .get('/movie/upcoming');
    } catch (error, stacktrace) {
      debugPrint(
          'Exceptions occurred getNowPlayingMovies: $error stacktrace: $stacktrace');
      return ResponseHandler()
        ..setException(ServerError.withError(error: error));
    }
    return ResponseHandler()..data = MoviesResponse.fromJson(response.data);
  }
}
