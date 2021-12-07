


import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/view_and_controllers/settings/settings_screen_controller.dart';

class ForgetPassowordScreen extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
        builder: (SettingsController controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text("Prifle Settings"),
              backgroundColor: Colors.red,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  VerticalSpacing(value: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 200,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}