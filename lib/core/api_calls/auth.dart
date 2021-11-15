


import 'package:getxfire/getxfire.dart';

class AuthenticationService extends GetxController
{


  login(String email,String password)
  async{
    print("this funtion called");
    UserCredential? data= await GetxFire.signInWithEmailAndPassword(
      email:email,
      password: password,
      onSuccess: (userCredential) {
        
        return userCredential;
      },
      onError: (code, message) {

      },
    );
return data;
  }


  createUserAccount(String email,String password)
 async {
   UserCredential? data= await GetxFire.createUserWithEmailAndPassword(
      isSuccessDialog: true,
      isErrorDialog: true,
      email:email,
      password: password,
      onSuccess: (userCredential) {


      },
      onError: (code, message) {},
    );
   print("-------");
   print(data.toString());
   return data;



  }


  requestOtpMail(String mail)
  async{
    await GetxFire.auth.sendPasswordResetEmail(email: mail);

  }


}