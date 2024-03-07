import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_bulider/view/homescreen.dart';
import 'package:resume_bulider/view/slashscreen.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF50457d),
  ));
  runApp(Resumebuiderapp());
}
class Resumebuiderapp extends StatelessWidget {
  const Resumebuiderapp({super.key});

  @override
  Widget build(BuildContext context) {
    return resumebuliderAPP();
  }
}
class resumebuliderAPP extends StatefulWidget {
  const resumebuliderAPP({super.key});

  @override
  State<resumebuliderAPP> createState() => _resumebuliderAPPState();
}

class _resumebuliderAPPState extends State<resumebuliderAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cvDargon',
      initialRoute: '/home',
      routes: {
        '/':(context) => slashscreen(),
        '/home':(context)=>homescreen()
      },
    );
  }
}
