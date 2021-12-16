

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import 'core/services/dependency_management.dart';
import 'view_and_controllers/splash_screen/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Purchases.setDebugLogsEnabled(true);
  await Purchases.setup("goog_qRFBQKVsjgBeQZRjTmxituvrYti");
  await GetStorage.init();

  await   Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: initBindings(),
      title: 'Flutter Demo',
      theme: ThemeData(

          primarySwatch: Colors.blue,
          // pageTransitionsTheme:const PageTransitionsTheme(builders: {
          //   TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          //   TargetPlatform.android: ZoomPageTransitionsBuilder(),
          // }),


      ),

      home:  SplashScreenn(),
    );
  }

  @override
  void initState() {

  }
}