


import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseRemoteConfig extends GetxController
{


 static Future<RemoteConfig> setupRemoteConfig() async {
    final RemoteConfig remoteConfig = RemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(hours: 1),
    ));
    await remoteConfig.setDefaults(<String, dynamic>{
      'welcome': 'default welcome',
      'hello': 'default hello',
    });
    RemoteConfigValue(null, ValueSource.valueStatic);
    return remoteConfig;
  }
}