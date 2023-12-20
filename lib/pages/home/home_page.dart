import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'home_controller.dart';
import '../../core/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        title: Text('Cinemania'.toUpperCase()),
        backgroundColor: AppColors.mainBackground,
        elevation: 0,
      ),
      body: GetBuilder<HomeController>(builder: (controller) {
        return Column(
          children: [
            CarouselSlider(
              items: controller.upcomingMovies.map(
                (movie) {
                  return Text('${movie.title}');
                },
              ).toList(),
              options: CarouselOptions(),
            ),
          ],
        );
      }),
    );
  }
}
