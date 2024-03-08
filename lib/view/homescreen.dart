import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
         SizedBox(width: 90,),
         Icon(Icons.notification_add_rounded,color: Colors.white,size: 35,),
         SizedBox(width: 20,),
         Icon(Icons.headphones,color: Colors.white,size: 35,),
         SizedBox(width: 20,),
         Icon(Icons.check_circle_rounded,color: Colors.white,size: 35,),
         SizedBox(width:5,),
       ],
       elevation: 4,
     ),
     /// creved screen

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
                    width: 100,
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12,),right: BorderSide(color: Colors.black12,))),
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/icon_contecte.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('CV profile')
                      ],
                    )),
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12,),right: BorderSide(color: Colors.black12,))),
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/DOC.png',width:50,height: 50,),
                        SizedBox(height: 10,),
                        Text('resume'),
                      ],
                    )),
                Container(
                    height: 100,
                    width: 105,
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12,),right: BorderSide(color: Colors.black12,))),
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
                    width: 105,
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12,),right: BorderSide(color: Colors.black12,))),
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/doc_resume.png',width: 50,height:50,),
                        SizedBox(height: 10,),
                        Text('Documents'),
                      ],
                    )),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12,),right: BorderSide(color: Colors.black12,))),
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/feed.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('Feed'),
                      ],
                    )),
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12,),right: BorderSide(color: Colors.black12,))),
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/workshop.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('Workshops'),
                      ],
                    )),
                Container(
                    height: 100,
                    width: 105,
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12,),right: BorderSide(color: Colors.black12,))),
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/guide.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('Guide'),
                      ],
                    )),
                Container(
                    height: 100,
                    width: 105,
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12,),right: BorderSide(color: Colors.black12,))),
                    child: Column(
                      children: [
                        Image.asset('assest/icons_/job.png',width: 50,height: 50,),
                        SizedBox(height: 10,),
                        Text('Jobs'),
                      ],
                    )),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 25,),
                Text('Tutorials',style: TextStyle(fontSize: 35),),
                SizedBox(width: 130,),
                Text('See More',style: TextStyle(fontSize: 20,color: Color(0XFF7f75a6)),),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15,),
               Image.asset('assest/toturial/toturial_1.png',height: 150,width: 120,),
                  Image.asset('assest/toturial/toturial_2.png',height: 150,width: 120,),
                  Image.asset('assest/toturial/toturail_3.png',height: 150,width: 120,),
                  Image.asset('assest/toturial/toturial_4.png',height: 150,width: 120,),
                  Image.asset('assest/toturial/toturail_5.png',height: 150,width: 120,),
                  Image.asset('assest/toturial/toturial_6.png',height: 150,width: 120,),
                  Image.asset('assest/toturial/toturial_7.png',height: 150,width: 120,),
                  Image.asset('assest/toturial/toturial_8.png',height: 150,width: 120,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 27,),
                Text('Resume designs',style: TextStyle(fontSize: 30),),
                SizedBox(width: 65,),
                Text('See All',style: TextStyle(fontSize: 20,color: Color(0XFF7f75a6)),),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  SizedBox(  height: 300,
                      child: Image.asset('assest/resume_photo/resume_1.png',fit: BoxFit.cover,)),
                  SizedBox(width: 15,),
                  SizedBox( height: 300,
                      child: Image.asset('assest/resume_photo/resume_2.png',fit: BoxFit.cover,)),
                  SizedBox(width: 15,),
                  SizedBox(  height: 300,
                      child: Image.asset('assest/resume_photo/resume_3.png',fit: BoxFit.cover,)),
                  SizedBox(width: 15,),
                  SizedBox(   height: 300,
                      child: Image.asset('assest/resume_photo/resume_4.png',fit: BoxFit.cover,)),
                  SizedBox(width: 15,),
                  SizedBox(    height: 300,
                      child: Image.asset('assest/resume_photo/resume_5.png',fit: BoxFit.cover,)),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 27,),
                Text('tips',style: TextStyle(fontSize: 30),),
                SizedBox(width: 220,),
                Text('See more',style: TextStyle(fontSize: 20,color: Color(0XFF7f75a6)),),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(  height: 190,
                    child: Image.asset('assest/tips/tips_1.png',fit: BoxFit.cover,)),
                SizedBox(  height: 190,
                    child: Image.asset('assest/tips/tips_2.png',fit: BoxFit.cover,)),
              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(  height: 190,
                    child: Image.asset('assest/tips/tips_3.png',fit: BoxFit.cover,)),
                SizedBox(  height: 190,
                    child: Image.asset('assest/tips/tips_4.png',fit: BoxFit.cover,)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 27,),
                Text('Services',style: TextStyle(fontSize: 30),),
                SizedBox(width: 150,),
                Text('See more',style: TextStyle(fontSize: 20,color: Color(0XFF7f75a6)),),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
            Row(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
