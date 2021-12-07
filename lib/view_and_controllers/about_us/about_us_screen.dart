import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About us"),backgroundColor: Colors.red,),
      body: Center(
        child: Text("this is About us screen",style: textStyleWidget(color: Colors.white),),
      ),
    );
  }
}
