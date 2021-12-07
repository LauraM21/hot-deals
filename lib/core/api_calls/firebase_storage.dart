import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';


class FirebaseStorageService
{
  static Future<String> postFile(File imageFile,String folderPath) async {
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();

    Reference reference =
    FirebaseStorage.instance.ref().child(folderPath).child(fileName);

    TaskSnapshot storageTaskSnapshot =await reference.putFile(imageFile);

    print(storageTaskSnapshot.ref.getDownloadURL());

    String dowUrl = await storageTaskSnapshot.ref.getDownloadURL();

    return  dowUrl;
  }



  static getAllDeals()
  async{

    QuerySnapshot q= await FirebaseFirestore.instance
        .collection('Deals').get();
    List<DocumentSnapshot> d=q.docs;
    return d;
  }


  static getAllFavDeals()
  async{

    QuerySnapshot q= await FirebaseFirestore.instance
        .collection('Fav').doc(Get.find<LocalDatabase>().getToken).collection("Favs").get();
    List<DocumentSnapshot> d=q.docs;
    return d;
  }
}