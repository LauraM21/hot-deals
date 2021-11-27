import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/api_calls/firebase_storage.dart';
import 'package:hotdealsgemet/core/api_calls/firestore_gateway.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';

class AllDealsController extends GetxController {
  bool isLoading = false;
   List<DocumentSnapshot> listOfDeals =[];

  @override
  void onInit() async {
    loadingController(true);
    listOfDeals = await FirebaseStorageService.getAllDeals();
    loadingController(false);
    update();
  }

  loadingController(bool value) {
    isLoading = value;
    update();
  }
}
