import 'package:get/get.dart';
import 'package:hotdealsgemet/view_and_controllers/settings/settings_screen_controller.dart';

class HomeScreenController extends GetxController
{

  bool isLoading=false;

  HomeScreenController()
  {
    fetchProfile();
  }


  fetchProfile()
 async {
    controlLoading(true);
    Future.delayed(Duration(seconds: 5));
    controlLoading(false);
  }


  controlLoading(bool value)
  {
   isLoading=value;
   update();
  }
}