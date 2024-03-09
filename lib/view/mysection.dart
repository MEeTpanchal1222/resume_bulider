import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  double valueofcircal = 0;
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
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    CircularProgressIndicator(value: 0.1,color: Color(0XFF6a5ca8),backgroundColor: Colors.grey,strokeAlign: 3,),
                    SizedBox(width: 30,),
                    Text('Resume completed'),
                    SizedBox(width: 20,),
                    Icon(Icons.games_rounded)

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

