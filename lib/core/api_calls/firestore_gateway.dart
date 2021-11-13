import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';

class FireStoreGateway extends GetxController {
  createUser(Map<String,dynamic> userData) async {


   await GetxFire.firestore.createData(collection: AppStrings.USERS, data: userData,id: userData[AppStrings.userUniqId]);
  }
  updateUser(Map<String,dynamic> userData,String uniqueId) async {


    await GetxFire.firestore.updateData(collection: AppStrings.USERS, data: userData,id: uniqueId);
  }
}
