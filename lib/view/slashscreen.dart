import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume_bulider/view/homescreen.dart';
import 'package:resume_bulider/view/section.dart';
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
    builder: (BuildContext context) => bottemscreen(),)));
    },

    child: Image.asset('assest/slash.jpg',height: double.infinity,width: double.infinity,),
         ),
       );
  }
}
