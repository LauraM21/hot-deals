


import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';

class AuthenticationService extends GetxController
{


  login(String email,String password)
  async{
    print("this funtion called");
    UserCredential? data= await GetxFire.signInWithEmailAndPassword(
      email:email,
      password: password,
      onSuccess: (userCredential) {
        print("0000000000000000000");
        print(userCredential.toString());
        return userCredential;
      },
      onError: (code, message) {
        print("111111111111111");

      },
    );

     return data;
  }


  createUserAccount(String email,String password)
 async {
    try {
      UserCredential? data = await GetxFire.createUserWithEmailAndPassword(
        isSuccessDialog: true,
        isErrorDialog: true,
        email: email,
        password: password,
        onSuccess: (userCredential) async {


        },
        onError: (code, message) {},
      );
      print("-------");
      print(data.toString());
      return data;
    }catch (e)
   {

   }




  }


  requestOtpMail(String mail)
  async{
    try {
    String value=  await GetxFire.auth.sendPasswordResetEmail(email: mail).then((value) {
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