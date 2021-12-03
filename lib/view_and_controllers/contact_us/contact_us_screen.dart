import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';

import 'contact_us_screen_controller.dart';

class ContactUs extends GetView<ContactUsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.red,
            centerTitle: false,
            title: Text(
              "Contact Us",
              style: textStyleWidget(
                  fontWeight: FontWights.semiBold,
                  color: Colors.white,
                  fontSize: FontSize.h1),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    VerticalSpacing(value: 10),

                    Text(
                     "For Help Text",
                      textAlign: TextAlign.left,
                      style: textStyleWidget(
                          letterSpacing: 1.4,
                          fontWeight: FontWeight.w600,
                          fontSize: FontSize.normalText,
                          color: AppColors.secondary_text_color),
                    ),
                    VerticalSpacing(value: 10),
                    Text(
                      "714-496-9970",
                      textAlign: TextAlign.left,
                      style: textStyleWidget(
                          letterSpacing: 1.4,
                          fontWeight: FontWights.extraBold,
                          fontSize: FontSize.h2,
                          color: AppColors.secondary_text_color),
                    ),
                    VerticalSpacing(value: 20),
                    Text(
                      "For phone call support",
                      textAlign: TextAlign.left,
                      style: textStyleWidget(
                          letterSpacing: 1.4,
                          fontWeight: FontWeight.w600,
                          fontSize: FontSize.normalText,
                          color: AppColors.secondary_text_color),
                    ),
                    VerticalSpacing(value: 10),
                    Text(
                      "949-514-8810",
                      textAlign: TextAlign.left,
                      style: textStyleWidget(
                          letterSpacing: 1.4,
                          fontWeight: FontWights.extraBold,
                          fontSize: FontSize.h2,
                          color: AppColors.secondary_text_color),
                    ),
                    VerticalSpacing(value: 20),
                    Text(
                      "For email help line",
                      textAlign: TextAlign.left,
                      style: textStyleWidget(
                          letterSpacing: 1.4,
                          fontWeight: FontWeight.w600,
                          fontSize: FontSize.normalText,
                          color: AppColors.secondary_text_color),
                    ),
                    VerticalSpacing(value: 10),
                    Text(
                      "LauraMonk.HotDeals@gmail.com",
                      textAlign: TextAlign.left,
                      style: textStyleWidget(

                          fontWeight: FontWights.extraBold,
                          fontSize: FontSize.h1,
                          color: AppColors.secondary_text_color),
                    ),

                    VerticalSpacing(value: 20),

                    Container(
                      width: 200,
                      height:200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AppAssets.applogo)
                          )
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    Text(
                      "HEMET CA. 92545",
                      textAlign: TextAlign.left,
                      style: textStyleWidget(

                          fontWeight: FontWights.normal,
                          fontSize: FontSize.normalText,
                          color: AppColors.secondary_text_color),
                    ),

                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
