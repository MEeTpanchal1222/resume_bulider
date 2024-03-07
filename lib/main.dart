import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_bulider/view/homescreen.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF181A20),
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
      initialRoute: '/',
      routes: {
        '/':(context) => homescreen(),
      },
    );
  }
}
