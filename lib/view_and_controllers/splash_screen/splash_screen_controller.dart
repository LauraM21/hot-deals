import 'package:get/get.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';
import 'package:hotdealsgemet/view_and_controllers/login_screen/login_screen.dart';

class SplashScreenController extends GetxController {

  late final  db= Get.find<LocalDatabase>();


  bool isLoginUser=false;

  @override
  void onInit() async {

    final instance=db.getStorageInstance;
    print("splash");
    print(instance.read(AppStrings.token));
  if(instance.read(AppStrings.token) == null || instance.read(AppStrings.token) == "")
    isLoginUser=false;
    else
        isLoginUser=true;


    update();
  }

}
