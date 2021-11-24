
import 'dart:io';

import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';

class FireStoreGateway extends GetxController {
  createUser(Map<String,dynamic> userData) async {


   await GetxFire.firestore.createData(collection: AppStrings.USERS, data: userData,id: userData[AppStrings.userUniqId]);
  }
  updateUser(Map<String,dynamic> userData,String uniqueId) async {


    await GetxFire.firestore.updateData(collection: AppStrings.USERS, data: userData,id: uniqueId);
  }


  uploadImage(File file)
  async{
    var data =await GetxFire.storage.uploadFile(imageToUpload: file, title: "hari krishna", fileType: "filetype", folder: "folder");

    print("");
    print(data!.url);
  }


  createDeal(Map<String,String> userData) async {


    await GetxFire.firestore.createData(collection: AppStrings.deals, data: userData,id: userData[AppStrings.dealUniqId]);
  }

}
