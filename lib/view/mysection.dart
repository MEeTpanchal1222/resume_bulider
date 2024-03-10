
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_bulider/uiteals/listforsection.dart';
class editscreen extends StatelessWidget {
  const editscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EDITScreen();
  }
}
class EDITScreen extends StatefulWidget {
  const EDITScreen({super.key});

  @override
  State<EDITScreen> createState() => _EDITScreenState();
}

class _EDITScreenState extends State<EDITScreen> {
  double valueofcircal = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF6a5ca8),
        actions: [
          Text('My Sections', style: TextStyle(
            color: Colors.white, letterSpacing: 1.5, fontSize: 30,),),
          SizedBox(width: 170,),

          Icon(Icons.check_circle_outline, color: Colors.white, size: 35,),
          SizedBox(width: 8,),
        ],
        elevation: 4,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 380,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.grey.shade50),borderRadius: BorderRadius.circular(35),boxShadow: [
                    BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),
                  ]),
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Stack(
                        children: [
                          CircularProgressIndicator(value: valueofcircal,color: Color(0XFF6a5ca8),backgroundColor: Colors.grey,strokeAlign: 3,strokeWidth: 8,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${valueofcircal* 10 .toInt()}'),
                          )
                        ],
                      ),
                      SizedBox(width: 30,),
                      Text('Resume Completed',style: TextStyle(fontSize: 25),),
                      SizedBox(width: 20,),
                      Icon(Icons.games_rounded),

                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration:BoxDecoration(color: Colors.white,border: Border.all(color:  Color(0xff7267af),width: 2),borderRadius: BorderRadius.circular(15),
                      //boxShadow: [
                      //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
                   ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.book,color: Color(0xff7267af),),
                        SizedBox(width: 10,),
                        Text('GUIDE',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration:BoxDecoration(color: Colors.white,border: Border.all(color:  Color(0xff7267af),width: 2),borderRadius: BorderRadius.circular(15),
                      //boxShadow: [
                      //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add,color: Color(0xff7267af),),
                        SizedBox(width: 10,),
                        Text('ADD SECTIONS',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 130,
                    decoration:BoxDecoration(color: Colors.white,border: Border.all(color:  Color(0xff7267af),width: 2),borderRadius: BorderRadius.circular(15),
                      //boxShadow: [
                      //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.palette_rounded,color: Color(0xff7267af),),
                        SizedBox(width: 10,),
                        Text('OPTIONS',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(
                section.length,
                    (index) => InkWell(
                      onTap: () {
                      Navigator.pushNamed(context, '/');
                      },
                        child: top(context, section[index]['img'], section[index]['Dec'])),
              ),
            )


          ],
        ),
      ),
    );
  }
}

Widget top(BuildContext context,String img,String dec)
{
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(
      width: 380,
      height: 100,
      decoration:
      BoxDecoration(color: Colors.white,border: Border.all(color: Colors.grey.shade50),borderRadius: BorderRadius.circular(12),boxShadow: [
        BoxShadow(color: Colors.grey,offset:Offset(0, 4),blurRadius: 10 ),
      ]),
      child: Row(
        children: [
          SizedBox(width: 30,),
          SizedBox(child: Image.asset(img),width: 50,height: 50,),
          SizedBox(width: 30,),
          Text(dec,style: TextStyle(fontSize: 22),),
        ],
      ),

    ),
  );
}