import 'package:get/get.dart';

import '../data/network/http_service.dart';
import '../data/remote/remote_source.dart';
import '../data/repository/home_repository.dart';
import '../pages/home/home_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() async {
    await Get.putAsync(() async => HttpService());

    await Get.putAsync<HomeController>(
      () async => HomeController(
        repository: HomeRepository(remoteSource: RemoteSource()),
      ),
    );
  }
}
