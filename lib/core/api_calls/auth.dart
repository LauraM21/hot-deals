


import 'package:getxfire/getxfire.dart';

class AuthenticationService extends GetxController
{


  login(String email,String password)
  async{
    print("this funtion called");
    await GetxFire.signInWithEmailAndPassword(
      email:email,
      password: password,
      onSuccess: (userCredential) {
        
        print(userCredential!.user!.emailVerified);
        return userCredential;
      },
      onError: (code, message) {},
    );

  }


  createUserAccount(String email,String password)
 async {
    await GetxFire.createUserWithEmailAndPassword(
      isSuccessDialog: true,
      isErrorDialog: true,
      email:email,
      password: password,
      onSuccess: (userCredential) {

        print(userCredential!.user!.emailVerified);
        return userCredential;
      },
      onError: (code, message) {},
    );



  }


  requestOtpMail(String mail)
  async{
    await GetxFire.auth.sendPasswordResetEmail(email: mail);

  }


}