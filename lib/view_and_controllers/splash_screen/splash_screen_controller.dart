import 'package:get/get.dart';
import 'package:hotdealsgemet/view_and_controllers/login_screen/login_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 2),(){

      print("called delay funtion");


    });
    update();
  }

  @override
  void refresh() {}

  @override
  void onReady() {}

  @override
  void onClose() {}
}
