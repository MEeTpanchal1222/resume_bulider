import 'dart:io';

import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:resume_bulider/view/homescreen.dart';
import 'package:resume_bulider/view/slashscreen.dart';

import 'input_all.dart';
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
File? Imagepath1 = ;
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
                inActiveIcon: Container(
                  padding: EdgeInsets.all(18),
                  decoration:
                  BoxDecoration(color: Color(0XFF6a5ca8), shape: BoxShape.circle),
                  child: Icon(
                    Icons.remove_red_eye,
                    size: 30,
                    color: Colors.white,
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
            actionBarView: Container(
              height: 300,
              width: 300,
              color: Colors.pink,
              child: Column(
                children: [
                      SizedBox(
                          height: 50,width: 50,
              child: Image.file(Imagepath1!)),
                      Text(textFieldnation)
                ],
              ),
            ),
          ),
      ),
    );
  }
}
