
import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';

class AuthenticationService extends GetxController
{


  login(String email,String password)
  async{
    print("this funtion called");
   UserCredential userCredential =await  FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);

    // var data= await GetxFire.signInWithEmailAndPassword(
    //   email:email,
    //   password: password,
    //   onSuccess: (userCredential) {
    //     print("0000000000000000000");
    //     print(userCredential.toString());
    //     return userCredential;
    //   },
    //   onError: (code, message) {
    //     print("111111111111111");
    //
    //   },
    // );

    return userCredential;
  }


  createUserAccount(String email,String password)
  async {
    try {


      UserCredential data =await  FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      // var data = await GetxFire.createUserWithEmailAndPassword(
      //   isSuccessDialog: true,
      //   isErrorDialog: true,
      //   email: email,
      //   password: password,
      //   onSuccess: (userCredential) async {
      //
      //
      //   },
      //   onError: (code, message) {},
      // );

      return data;
    }catch (e)
    {

    }




  }


  requestOtpMail(String mail)
  async{
    try {



      String value=  await FirebaseAuth.instance.sendPasswordResetEmail(email: mail).then((value) {
        return AppStrings.success;
      });
      return AppStrings.success;
    }
    catch (e)
    {
      print("------------");
      return AppStrings.failure;
      print("error throwd");
    }


  }


}


class FirebaseApi3 {
  static UploadTask? uploadFile2(String destination3, File file3) {
    try {
      final ref3 = FirebaseStorage.instance.ref(destination3);

      return ref3.putFile(file3);
    } on FirebaseException catch (e) {
      print(e);
      return null;
    }
  }

  static Future<UploadTask?> uploadBytes2(String destination3, Uint8List data3) async {
    try {
      final ref3 = FirebaseStorage.instance.ref(destination3);

      return ref3.putData(data3);
    } on FirebaseException catch (e) {
      print(e);
      return null;
    }
  }
}