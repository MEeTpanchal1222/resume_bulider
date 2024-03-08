import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:resume_bulider/view/homescreen.dart';
import 'package:resume_bulider/view/slashscreen.dart';

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

    return Scaffold(
        bottomNavigationBar:CurvedNavBar(
          actionButton: CurvedActionBar(
              onTab: (value) {
                /// perform action here
                print(value);
              },
              activeIcon: Container(
                padding: EdgeInsets.all(8),
                decoration:
                BoxDecoration(color: Color(0xff6b58b1), shape: BoxShape.circle),
                child: Icon(
                  Icons.camera_alt,
                  size: 50,
                  color: Colors.orange,
                ),
              ),
              inActiveIcon: Container(
                padding: EdgeInsets.all(8),
                decoration:
                BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 50,
                  color: Colors.orange,
                ),
              ),
              text: "Camera"),
          activeColor: Colors.purple,
          navBarBackgroundColor: Colors.white,
          inActiveColor: Colors.black45,
          appBarItems: [
            FABBottomAppBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.purple,
                ),
                inActiveIcon: Icon(
                  Icons.home,
                  color: Colors.black26,
                ),
                text: 'Home'),
            FABBottomAppBarItem(
                activeIcon: Icon(
                  Icons.wallet_giftcard,
                  color: Colors.purple,
                ),
                inActiveIcon: Icon(
                  Icons.wallet_giftcard,
                  color: Colors.black26,
                ),
                text: 'Wallet'),
          ],
          bodyItems: [
            homescreen(),
            slashscreen()
          ],
          actionBarView: Container(
            height: 50,
            color: Colors.transparent,
          ),
        ),
    );
  }
}
