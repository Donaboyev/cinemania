import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_colors.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
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
    );
  }
}
