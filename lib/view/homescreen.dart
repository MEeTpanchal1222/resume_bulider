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
      body: Column(
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
                    children: [
                      Image.asset('assest/icons_/WORD_CV.png',width: 50,height: 50,),
                      SizedBox(height: 10,),
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
          )

        ],
      ),
    );
  }
}
