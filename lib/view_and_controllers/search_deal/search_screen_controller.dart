import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotdealsgemet/core/api_calls/firebase_storage.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';

class SearchDealController extends GetxController {
  TextEditingController searchController = TextEditingController();
  bool isLoading = false;
  List<DocumentSnapshot> listOfDeals = [];

  @override
  void onInit() async {}


  onChangedListner() async {
    loadingController(true);
    listOfDeals.clear();
    List<DocumentSnapshot> d = await FirebaseStorageService.getAllDeals();
    d.where((element) =>
    searchController.text.contains(element["shopName"])
        ||
        searchController.text.contains(element["description"])

    )
        .toList();
    listOfDeals.addAll(d);

    print("listOfDeals length is ${listOfDeals.length}");
    loadingController(false);
    update();
  }


  loadingController(bool value) {
    isLoading = value;
    update();
  }

  @override
  void onClose() {
    searchController.dispose();
  }
}
