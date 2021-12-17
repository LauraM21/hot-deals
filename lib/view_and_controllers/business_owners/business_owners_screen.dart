import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/view_and_controllers/business_owners/business_owners_controller.dart';

class BusinessOwners extends GetView<BusinessOnwersController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BusinessOnwersController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.red,
            centerTitle: false,
            title: Text(
              "Hot Deals Hemet",
              style: textStyleWidget(
                  fontWeight: FontWights.semiBold,
                  color: Colors.white,
                  fontSize: FontSize.h1),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  VerticalSpacing(),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppAssets.business),
                      ),
                    ),
                  ),
                  VerticalSpacing(value: 15),
                  Text(
                    AppStrings.businessText,
                    textAlign: TextAlign.left,
                    style: textStyleWidget(
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.normal,
                        fontSize: FontSize.normalText,
                        color: AppColors.secondary_text_color),
                  ),
                  VerticalSpacing(value: 25),
                  ButtonWidget("Create a Deal Now", Icons.business, () {
                        controller.goTODealPage();
                  }),
                  VerticalSpacing(value: 15),

                  Text(
                    "Start before 11/20/21 and receive a 50% off discout.no contracts",
                    textAlign: TextAlign.center,
                    style: textStyleWidget(
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.normal,
                        fontSize: FontSize.normalText,
                        color: Colors.red.withOpacity(.5)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
class ButtonWidget extends StatelessWidget {
  String? name;
  IconData? iconData;
  late Callback buttonFuntion;

  ButtonWidget(this.name, this.iconData, this.buttonFuntion);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: MaterialButton(
          height: 40,
          onPressed: buttonFuntion,
          splashColor: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(iconData, color: AppColors.white),
              HorizontalSpacing(value: 10),
              Text(
                name!,
                style:
                textStyleWidget(color: AppColors.white, letterSpacing: 1.2),
              ),
            ],
          ),
          materialTapTargetSize: MaterialTapTargetSize.padded,
          animationDuration: Duration(seconds: 1),
          minWidth: double.infinity,
          color: AppColors.red.withOpacity(.9),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}