

  import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:hotdealsgemet/view_and_controllers/login_screen/login_screen_controller.dart';
import 'package:hotdealsgemet/view_and_controllers/splash_screen/splash_screen_controller.dart';

initBindings()
  {
    Get.lazyPut(() => SplashScreenController());

    Get.lazyPut(() => LoginController());

  }