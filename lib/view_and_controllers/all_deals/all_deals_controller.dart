import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/api_calls/firestore_gateway.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';

class AllDealsController extends GetxController
{


  getAllDeals()
  async{

  return Get.find<FireStoreGateway>().getAllDeals();

  }

}