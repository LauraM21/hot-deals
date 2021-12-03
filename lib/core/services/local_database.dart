import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';

class LocalDatabase extends GetxController
{

  late  GetStorage _storage ;



  storageInit()
  {
    print("storageInit funtion called");
    _storage=GetStorage();
  }

  get getStorageInstance =>_storage;

  set storeToken(String value)
  {
    print("store token funtion called");

    _storage.write(AppStrings.token,value);
  }

  get getToken
  {
    print("getToken funtion called");

    return _storage.read(AppStrings.token);
  }

}