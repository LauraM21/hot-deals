import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotdealsgemet/core/api_calls/firebase_storage.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';

class FavDealsController extends GetxController {
  List<DocumentSnapshot> listOfAllFavDeals = [];

  bool isLoading = false;

  FavDealsController() {
    getAllFavDeals();
    update();
  }

  getAllFavDeals() async {
    loadingController(true);
    List<DocumentSnapshot> listOfDealIds = await FirebaseStorageService.getAllFavDeals();
    listOfDealIds.forEach((element) async {
      DocumentSnapshot d = await FirebaseFirestore.instance
          .collection('Deals')
          .doc(element["id"])
          .get();
      listOfAllFavDeals.add(d);
    });
    print("this is fav deals");
    print(listOfAllFavDeals.length);
    loadingController(false);
    update();
  }

  loadingController(bool value) {
    isLoading = value;
    update();
  }


}
