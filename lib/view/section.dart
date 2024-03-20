import 'dart:io';

import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_bulider/view/homescreen.dart';
import 'package:resume_bulider/view/slashscreen.dart';
import 'package:resume_bulider/view/input_all.dart';
import 'mysection.dart';

class bottemscreen extends StatelessWidget {
  const bottemscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottemScreen();
  }
}
class BottemScreen extends StatefulWidget {
  const BottemScreen({super.key});

  @override
  State<BottemScreen> createState() => _SectionState();
}
class _SectionState extends State<BottemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar:CurvedNavBar(
            actionButton: CurvedActionBar(
                onTab: (value) {
                  /// perform action here
                  print(value);
                },
                activeIcon: Container(
                  padding: EdgeInsets.all(10),
                  decoration:
                  BoxDecoration(color: Color(0xff6b58b1), shape: BoxShape.circle),
                  child: Icon(
                    Icons.downloading_sharp,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                inActiveIcon: InkWell(
                  child: Container(
                    padding: EdgeInsets.all(18),
                    decoration:
                    BoxDecoration(color: Color(0XFF6a5ca8), shape: BoxShape.circle),
                    child: Icon(
                      Icons.remove_red_eye,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                text: "Preview"),
            activeColor: Color(0XFF6a5ca8),
            navBarBackgroundColor: Colors.white,
            inActiveColor: Colors.black45,
            appBarItems: [
              FABBottomAppBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    color: Color(0XFF6a5ca8),
                  ),
                  inActiveIcon: Icon(
                    Icons.home,
                    color: Colors.black54,
                  ),
                  text: 'Home'),
              FABBottomAppBarItem(
                  activeIcon: Icon(
                    Icons.edit,
                    color: Color(0XFF6a5ca8),
                  ),
                  inActiveIcon: Icon(
                    Icons.edit,
                    color: Colors.black54,
                  ),
                  text: 'Section'),
              FABBottomAppBarItem(
                  activeIcon: Icon(
                    Icons.photo_rounded,
                    color:Color(0XFF6a5ca8),
                  ),
                  inActiveIcon: Icon(
                    Icons.photo_rounded,
                    color: Colors.black54,
                  ),
                  text: 'Designs'),
              FABBottomAppBarItem(
                  activeIcon: Icon(
                    Icons.account_circle_rounded,
                    color: Color(0XFF6a5ca8),
                  ),
                  inActiveIcon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black54,
                  ),
                  text: 'Account'),


            ],
            bodyItems: [
              homescreen(),
              editscreen(),
              slashscreen(),
              slashscreen(),
            ],
            actionBarView: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 550,
                  width: 400,
                  color: Colors.white,
                  child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: 120,width: 120,
                                child: (Imagepath != null )?Image.file(Imagepath!,fit: BoxFit.fill,):null),
                           Stack(
                             children: [Container(
                               height: 400,width: 120,
                               decoration: BoxDecoration(color: Colors.grey.shade400),
                             ),
                               Text(textFieldnation),
                             ]
                           ),

                          ],
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Row(
                            children: [
                              Container(
                                height: 120,width: 280,
                                decoration: BoxDecoration(color: Colors.grey.shade700),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
      ),
    );
  }
}
// bool switchValuemale = false;
// bool switchValueage = false;
// bool switchValuemarrige = false;
// File? Imagepath;
// String textFieldnation = '';
// String textFieldface = '';
// String textFieldlink1 = '';
// String textFieldlink2 = '';
// String textFieldlink3 = '';
// String textFieldname = '';
// String textFielddob = '';
// String textFieldmail = '';
// String textFieldphone = '';
// String textFieldloction = '';
// String textFieldaddress = '';
// String textFieldprofile = '';
// String textFieldintro = '';
// String textFielddesi = '';
// String textFielddesc = '';
//
// bool male = false; //on tap male = true
// bool marride = false;
