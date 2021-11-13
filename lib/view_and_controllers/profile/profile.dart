import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:hotdealsgemet/core/api_calls/auth.dart';
import 'package:hotdealsgemet/core/api_calls/firestore_gateway.dart';
import 'package:hotdealsgemet/core/app_rss/app_colors.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/app_rss/font_size.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';
import 'package:hotdealsgemet/widget/custom_spacing.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  // var email;
  // var password;
  // var fullname;
  var username;
  bool _passwordVisible=false;

  void initState() {
    _passwordVisible = false;
  }

  Future<void> _showSelectionDialog1(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text("From where do you want to take the photo?"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Gallery"),
                        Icon(Icons.filter),
                      ],
                    ),
                    onTap: () async {
                      await selectfile1();
                      print("hy");
                      Navigator.of(context).pop(false);
                    },
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Camera"),
                        Icon(Icons.photo_camera),
                      ],
                    ),
                    onTap: () async {
                      await pickImage();
                      print("bye");
                      Navigator.of(context).pop(false);
                    },
                  )
                ],
              ),
            ));
      },
    );
  }
  var file;
  var _imageFile;
  String path2 = "No file added";
  var uploadDocuments;

  var fileName1 = 'No File Selected Yet';
  var path1 = 'No File Selected Yet';
  final picker = ImagePicker();
  Future selectfile1() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
    var path1 = result.files.single.path;
    setState(() => file = File(path1!));
    path1 = file.path.split('/').last;
    print("+++$path1");
    print("$fileName1");
    setState(() => path2 = path1!);
  }
  Future pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _imageFile = File(pickedFile!.path);
      var image1 = _imageFile.path.split('/').last;
      setState(() => path1 = image1);
      print("$_imageFile");
      print("$image1");
      path2 = image1;
      print("$path2");
    });
  }

  var photoUrl;
  var task3;
  Future uploadFile() async {
    if (file == null) return;

    final fileName = path2;
    print("${fileName}");


    final destination3 = 'Files/$fileName';

    task3 = FirebaseApi3.uploadFile2(destination3, file);
    setState(() {});

    if (task3 == null) return;

    final snapshot3 = await task3.whenComplete(() {});
    photoUrl = await snapshot3.ref.getDownloadURL();

    print('Download-Link3: $photoUrl');
  }

  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:Scaffold(appBar: AppBar(
      elevation: 0,
      backgroundColor: AppColors.red,
        title: Center(
          child: Text(
            "YOUR PROFILE",
            style: TextStyle(
              color: AppColors.white,
              fontSize: FontSize.h2,
            ),
          ),
        ),
    ),body: SingleChildScrollView(
    child: SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSpacing(value: 15),
        Center(
          child:  InkWell(onTap: () async {print("clicked");
          await _showSelectionDialog1(context);
          await uploadFile();
          uploadDocuments = path2;},
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(25, 20.5, 0, 8),
        //   child: Text(
        //     "E-Mail",
        //     style: TextStyle(
        //         color: ColorUtils.black,
        //         fontSize: Size.subHeading,
        //         fontWeight: FontWeight.w400),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        //   child: TextFormField(
        //     keyboardType: TextInputType.emailAddress,
        //     validator: (value) {
        //       if (value == null || value.isEmpty) {
        //         return 'Please enter some text';
        //       }
        //       return null;
        //     },
        //     decoration: InputDecoration(
        //       labelText: "enter email...",
        //       fillColor: ColorUtils.white,
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(10.0),
        //         borderSide: BorderSide(),
        //       ),
        //     ),
        //     onChanged: (value) {
        //       print(value);
        //       // globalMemory.userInputs.project_name = value;
        //       email = value;
        //       print(email);
        //     },
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(25, 20.5, 0, 8),
        //   child: Text(
        //     "Password",
        //     style: TextStyle(
        //         color: ColorUtils.black,
        //         fontSize: Size.subHeading,
        //         fontWeight: FontWeight.w400),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        //   child:
        //   TextFormField(
        //   keyboardType: TextInputType.text,
        //   validator: (value) {
        //     if (value == null || value.isEmpty) {
        //       return 'Please enter some text';
        //     }
        //     return null;
        //   },
        //
        //   obscureText: !_passwordVisible,//This will obscure text dynamically
        //   decoration: InputDecoration(
        //     labelText: 'Password',
        //     hintText: 'Enter your password',
        //     // Here is key idea
        //     suffixIcon: IconButton(
        //       icon: Icon(
        //         // Based on passwordVisible state choose the icon
        //         _passwordVisible
        //             ? Icons.visibility
        //             : Icons.visibility_off,
        //         color: Theme.of(context).primaryColorDark,
        //       ),
        //       onPressed: () {
        //         // Update the state i.e. toogle the state of passwordVisible variable
        //         setState(() {
        //           _passwordVisible = !_passwordVisible;
        //         });
        //       },
        //     ),
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(10.0),
        //       borderSide: BorderSide(),
        //     ),
        //   ),
        // ),),


        Padding(
          padding: const EdgeInsets.fromLTRB(25, 20.5, 0, 8),
          child: Text(
            "Username",
            style: TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: FontSize.h2,
                fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "enter Username...",
              fillColor: AppColors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(),
              ),
            ),
            onChanged: (value) {
              print(value);
              // globalMemory.userInputs.project_name = value;
              username = value;
              print(username);
            },
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(25, 20.5, 0, 8),
        //   child: Text(
        //     "Fullname",
        //     style: TextStyle(
        //         color: ColorUtils.black,
        //         fontSize: Size.subHeading,
        //         fontWeight: FontWeight.w400),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        //   child: TextFormField(
        //     validator: (value) {
        //       if (value == null || value.isEmpty) {
        //         return 'Please enter some text';
        //       }
        //       return null;
        //     },
        //
        //
        //     decoration: InputDecoration(
        //       labelText: "enter Fullname...",
        //       fillColor: ColorUtils.white,
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(10.0),
        //         borderSide: BorderSide(),
        //       ),
        //     ),
        //     onChanged: (value) {
        //       print(value);
        //       // globalMemory.userInputs.project_name = value;
        //       fullname = value;
        //       print(fullname);
        //     },
        //   ),
        // ),

        Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 68),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.amberAccent,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            height: 48,
            width: double.infinity,
            child: TextButton(
              child: Text("Update User",
                  style: TextStyle(color: AppColors.white, fontSize: 18)),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
Get.find<FireStoreGateway>().updateUser({AppStrings.userName:username},Get.find<FireStoreGateway>().updateUser({AppStrings.photoUrl:photoUrl},Get.find<LocalDatabase>().getStorageInstance.read(AppStrings.token)));

// Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) =>
                  //         BookingSucessfullScreen(),
                  //   ),
                  // );
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  await ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );


                }
              },
            ),
          ),
        )
      ],
    ),
    ),
    ),),
       );
  }
}
