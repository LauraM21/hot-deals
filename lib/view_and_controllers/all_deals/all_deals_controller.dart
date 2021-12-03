import 'dart:async';

import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/api_calls/firebase_storage.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';

class AllDealsController extends GetxController {
  bool isLoading = false;
  List<DocumentSnapshot> listOfDeals = [];

  late final db = Get.find<LocalDatabase>();
  late final instance;
  StreamController controller = StreamController();
  late Stream stream;

  @override
  void onInit() async {
    instance = db.getStorageInstance;

    loadingController(true);

    FirebaseFirestore.instance.collection('Fav').doc(
        instance.read(AppStrings.token)).collection("Favs").snapshots().listen(
        favListen);


    listOfDeals = await FirebaseStorageService.getAllDeals();
    loadingController(false);
    update();
  }

  loadingController(bool value) {
    isLoading = value;
    update();
  }

  fetchAllFavDeals() async {
    DocumentSnapshot favDocs = await FirebaseFirestore.instance
        .collection('Fav')
        .doc(instance.read(AppStrings.token))
        .get();
    print("data");
    print(favDocs);
  }

  addToFavDeal(String id) async {
    //checking if this document is already in database or not
    var q = await FirebaseFirestore.instance
        .collection('Fav')
        .doc(instance.read(AppStrings.token))
        .collection("Favs")
        .get();
        List<DocumentSnapshot> d=q.docs;
        print(d.length);
    if (d.isEmpty || d.length==0) {
       print("this fav list is empty");
      await FirebaseFirestore.instance
          .collection('Fav')
          .doc(instance.read(AppStrings.token))
          .collection("Favs")
          .doc(id)
          .set({"id": id});
    }
    else {
      print("document is not null");
      List<DocumentSnapshot> dd=d.where((element) => element.id==id).toList();
      if(dd.isEmpty)
        {
          print("adding to fav list");
          await FirebaseFirestore.instance
              .collection('Fav')
              .doc(instance.read(AppStrings.token))
              .collection("Favs")
              .doc(id)
              .set({"id": id});

        }else
          {
            //delete
            print("already this deals added in fav list so deleting");
            await FirebaseFirestore.instance
                .collection('Fav')
                .doc(instance.read(AppStrings.token))
                .collection("Favs")
                .doc(id).delete();

          }


    }
  }


  favListen(value) {
    print("favListenCalled");
    controller.add(value);
    update();
  }
}

