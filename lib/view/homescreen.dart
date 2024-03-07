import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0XFF6a5ca8),
       actions: [
         Text('cvDargon',style: TextStyle(color: Colors.white,letterSpacing: 1.5,fontSize: 35,),),
         SizedBox(width: 98,),
         Icon(Icons.notification_add_rounded,color: Colors.white,size: 35,),
         SizedBox(width: 20,),
         Icon(Icons.headphones,color: Colors.white,size: 35,),
         SizedBox(width: 20,),
         Icon(Icons.check_circle_rounded,color: Colors.white,size: 35,),
         SizedBox(width: 20,),
       ],
     ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset('assest/bord_1.png'),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 100,
                    width: 110,
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/icon_contecte.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('CV profile')
                      ],
                    )),
                Container(
                    height: 100,
                    width: 110,
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/DOC.png',width:50,height: 50,),
                        SizedBox(height: 10,),
                        Text('resume'),
                      ],
                    )),
                Container(
                    height: 100,
                    width: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         SizedBox( height: 60,
                             child: Center(child: Image.asset('assest/icons_/WORD_CV.png',fit: BoxFit.cover,))),
                         // SizedBox(height: 10,),
                        Stack(
                          children: [
                            Text('Digtal CV'),
                          ],
                        )

                      ],
                    )),
                Container(
                    height: 100,
                    width: 110,
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/doc_resume.png',width: 50,height:50,),
                        SizedBox(height: 10,),
                        Text('Documents'),
                      ],
                    )),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    height: 100,
                    width: 110,
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/feed.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('Feed'),
                      ],
                    )),
                Container(
                    height: 100,
                    width: 110,
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/workshop.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('Workshops'),
                      ],
                    )),
                Container(
                    height: 100,
                    width: 110,
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/guide.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('Guide'),
                      ],
                    )),
                Container(
                    height: 100,
                    width: 110,
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/job.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('Jobs'),
                      ],
                    )),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 27,),
                Text('Tutorials',style: TextStyle(fontSize: 35),),
                SizedBox(width: 150,),
                Text('See More',style: TextStyle(fontSize: 20,color: Color(0XFF7f75a6)),),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
               Image.asset('assest/toturial/toturial_1.png',height: 150,width: 150,),
                  Image.asset('assest/toturial/toturial_2.png',height: 150,width: 150,),
                  Image.asset('assest/toturial/toturail_3.png',height: 150,width: 150,),
                  Image.asset('assest/toturial/toturial_4.png',height: 150,width: 150,),
                  Image.asset('assest/toturial/toturail_5.png',height: 150,width: 150,),
                  Image.asset('assest/toturial/toturial_6.png',height: 150,width: 150,),
                  Image.asset('assest/toturial/toturial_7.png',height: 150,width: 150,),
                  Image.asset('assest/toturial/toturial_8.png',height: 150,width: 150,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 27,),
                Text('Resume designs',style: TextStyle(fontSize: 30),),
                SizedBox(width: 85,),
                Text('See All',style: TextStyle(fontSize: 20,color: Color(0XFF7f75a6)),),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CurvedNavBar(
        //     actionButton: CurvedActionBar(
        //         onTab: (value) {
        //           /// perform action here
        //           print(value);
        //         },
        //         activeIcon: Container(
        //           padding: EdgeInsets.all(8),
        //           decoration:
        //           BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        //           child: Icon(
        //             Icons.camera_alt,
        //             size: 50,
        //             color: Colors.orange,
        //           ),
        //         ),
        //         inActiveIcon: Container(
        //           padding: EdgeInsets.all(8),
        //           decoration:
        //           BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
        //           child: Icon(
        //             Icons.camera_alt_outlined,
        //             size: 50,
        //             color: Colors.orange,
        //           ),
        //         ),
        //         text: "Camera"),
        //     activeColor: Colors.blue,
        //     navBarBackgroundColor: Colors.limeAccent,
        //     inActiveColor: Colors.black45,
        //     appBarItems: [
        //       FABBottomAppBarItem(
        //           activeIcon: Icon(
        //             Icons.home,
        //             color: Colors.blue,
        //           ),
        //           inActiveIcon: Icon(
        //             Icons.home,
        //             color: Colors.black26,
        //           ),
        //           text: 'Home'),
        //       FABBottomAppBarItem(
        //           activeIcon: Icon(
        //             Icons.wallet_giftcard,
        //             color: Colors.blue,
        //           ),
        //           inActiveIcon: Icon(
        //             Icons.wallet_giftcard,
        //             color: Colors.black26,
        //           ),
        //           text: 'Wallet'),
        //     ],
        //     bodyItems: [
        //       Container(
        //         height: MediaQuery.of(context).size.height,
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         height: MediaQuery.of(context).size.height,
        //         color: Colors.pinkAccent,
        //       )
        //     ],
        //     actionBarView: Container(
        //       height: MediaQuery.of(context).size.height,
        //       color: Colors.orange,
        //     ),
        //   ),
        // ),

          ],
        ),
      ),
    );
  }
}