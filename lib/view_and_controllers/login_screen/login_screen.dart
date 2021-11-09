import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/view_and_controllers/login_screen/login_screen_controller.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (builder) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: 250,
                  height: 250,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Image(
                    image: AssetImage(AppAssets.applogo),
                  )),
              SizedBox(
                height: 20,
              ),
              Text("e-mail"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: controller.email_controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    )),
                onSubmitted: (value) {},
              ),
              SizedBox(
                height: 20,
              ),
              Text("password"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: controller.password_controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    )),
                onSubmitted: (value) {},
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                  onPressed: () async{
                    print("on pressed button");
                    // await GetxFire.signInWithEmailAndPassword(
                    //   email:"harikrishnarko007@gmail.com",
                    //   password: "123456",
                    //   onSuccess: (userCredential) {
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(
                    //         content: Text(' signed in'),
                    //       ),
                    //     );
                    //   },
                    //   onError: (code, message) {},
                    // );
                    //
                    GetxFire.auth.createUserWithEmailAndPassword(
                        email: "harikrishnarko007@gmail.com",
                        password: "123456");

                    controller.loginValidations();
                  },
                  child: Text("Login"),
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  animationDuration: Duration(seconds: 1),
                  minWidth: double.infinity,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  // elevation: 2,
                  //   focusElevation:2,
                  visualDensity: VisualDensity.adaptivePlatformDensity)
            ],
          ),
        )),
      );
    });
  }
}
