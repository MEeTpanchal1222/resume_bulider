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
            
       ),
    );
  }
}
