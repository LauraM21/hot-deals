


import 'package:getxfire/getxfire.dart';

class AuthenticationService extends GetxController
{


  login(String email,String password)
  async{
    await GetxFire.signInWithEmailAndPassword(
      email:email,
      password: password,
      onSuccess: (userCredential) {
        print(userCredential!.user!.toString());
        return userCredential;
      },
      onError: (code, message) {},
    );

  }


}