import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';

class HomeScreen extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(builder: (builder) {
      return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
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
          drawer: SideDrawer(context),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    child: Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppAssets.applogo),
                      )),
                    ),
                  ),
                  VerticalSpacing(value: 10),
                  Center(
                    child: Text(
                        "The app where you don't have to cut out coupons in order to SAVE MONEY!.",
                        textAlign: TextAlign.center,
                        style: textStyleWidget(
                            fontSize: FontSize.smallText,
                            fontWeight: FontWights.light,
                            color: AppColors.secondary_text_color)),
                  ),
                  VerticalSpacing(value: 15),
                  ButtonWidget(
                      "Find Deals", Icons.add_to_queue_outlined, () {}),
                  ButtonWidget("Search Deals", Icons.search, () {}),
                  ButtonWidget("FAQ", Icons.question_answer, () {}),
                  ButtonWidget("Sign up", Icons.login, () {}),
                  ButtonWidget("BUSINESS OWNERS", Icons.login, () {}),
                  ButtonWidget("Contact Us", Icons.call, () {}),
                ],
              ),
            ),
          ),
        ),
      );
    });
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
