import 'dart:async';
import 'package:flutter/material.dart';
class slashscreen extends StatelessWidget {
  const slashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SlashScreen();
  }
}
class SlashScreen extends StatefulWidget {
  const SlashScreen({super.key});

  @override
  State<SlashScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SlashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: InkWell(
    onTap: () {
    Timer(
    Duration(seconds: 1),
    () => Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (BuildContext context) => SlashScreen(),)));
    },
    child:Center(
    child: Container(
    alignment: Alignment.center,

    child: Container(
       height: double.infinity,
        width: double.infinity,
    child:Center(
    child: Image.asset('assest/slash.jpg'),
         )

         ),
       ),
      ),
      ),
    );
  }
}
