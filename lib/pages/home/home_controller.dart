import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/models/movies_response.dart';
import '../../data/repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  final List<Movie> _upcomingMovies = [];

  HomeController({required this.repository});

  @override
  void onInit() {
    super.onInit();
    _getUpcomingMovies();
  }

  Future<void> _getUpcomingMovies() async {
    final result = await repository.getUpcomingMovies();
    if (result is MoviesResponse) {
      _upcomingMovies.addAll(result.results!);
      update();
    } else {
      debugPrint('===================> error: $result');
    }
  }
}
