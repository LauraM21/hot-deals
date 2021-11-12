// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names;, file_names
import 'package:flutter/material.dart';

ClipRRect SideDrawer(BuildContext context) {
  return ClipRRect(
    borderRadius: BorderRadius.horizontal(left: Radius.circular(50.0)),
    child: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black,
      ),
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: ListView(
            children: [
              ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => AppBars()),
                    // );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Visit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => AppBars()),
                    // );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Exhibit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => AppBars()),
                    // );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Facilities',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => AppBars()),
                    // );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Services',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => AppBars()),
                    // );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {}),
              Divider(
                thickness: 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Text("Contact Us"),
                  TextButton(
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //       builder: (BuildContext context) => ContactUs()),
                        // );
                      }),
                  SizedBox(height: 10),
                  TextButton(
                      child: Text(
                        "FeedBack",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //       builder: (BuildContext context) => Feed()),
                        // );
                      }),
                  SizedBox(height: 10),
                  TextButton(
                      child: Text(
                        "FAQs",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //       builder: (BuildContext context) => FAQ()),
                        // );
                      }),
                  SizedBox(height: 10),
                  TextButton(
                      child: Text(
                        "Blog",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {}),
                  SizedBox(height: 10),
                  TextButton(
                      child: Text(
                        "About Us",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //       builder: (BuildContext context) => About()),
                        // );
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
