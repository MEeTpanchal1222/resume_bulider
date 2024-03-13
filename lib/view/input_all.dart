
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class inputallscreen extends StatelessWidget {
  const inputallscreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as int;
    return InputAllScreen(index: index);
  }
}

class InputAllScreen extends StatefulWidget {
  final int? index; // Make index nullable

  const InputAllScreen({Key? key, this.index}) : super(key: key);

  @override
  State<InputAllScreen> createState() => _InputAllScreenState();
}
 TextEditingController Txtemail = TextEditingController();
  TextEditingController Txtnation = TextEditingController();
class _InputAllScreenState extends State<InputAllScreen> {
  bool _switchValuemale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebebeb),
      appBar: AppBar(
        backgroundColor: Color(0XFF6a5ca8),
        actions: [
          Text(
            (widget.index == 0) ? 'Basic Info' : (widget.index == 1)
                ? 'Contact Details'
                : (widget.index == 2) ? 'Profile Image' : (widget.index == 3)
                ? 'Career Summary'
                : (widget.index == 4) ? 'Position Of Responsibility' : (widget
                .index == 5) ? 'Internship' : (widget.index == 6)
                ? 'professional qualification'
                : (widget.index == 7) ? 'educational background' : (widget
                .index == 8) ? 'Certificates' : (widget.index == 9)
                ? 'Academic projects'
                : (widget.index == 10) ? 'Achievements' : (widget.index == 11)
                ? 'Co-Curricular Activites'
                : (widget.index == 12) ? 'Technical Skills' : (widget.index ==
                13) ? 'Soft Skills' : (widget.index == 14)
                ? 'Interests'
                : (widget.index == 15) ? 'Spoken languages' : (widget.index ==
                16) ? 'Preferences' : '', // Access index using widget.index
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 20,
            ),
          ),
          SizedBox(width: (widget.index == 4 || widget.index == 7 ||
              widget.index == 6) ? 40 : (widget.index == 14) ? 120 : 100),
          Icon(Icons.edit, color: Colors.white, size: 35),
          SizedBox(width: 8),
        ],
        elevation: 4,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.transparent,
                      border: Border.all(color: Color(0xff7267af), width: 2),
                      borderRadius: BorderRadius.circular(15),
                      //boxShadow: [
                      //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.book, color: Color(0xff7267af),),
                        SizedBox(width: 10,),
                        Text('GUIDE', style: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),)
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(color: Colors.transparent,
                      border: Border.all(color: Color(0xff7267af), width: 2),
                      borderRadius: BorderRadius.circular(15),
                      //boxShadow: [
                      //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_border, color: Color(0xff7267af),),
                        SizedBox(width: 10,),
                        Text('DEFAULT', style: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),)
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.transparent,
                      border: Border.all(color: Color(0xff7267af), width: 2),
                      borderRadius: BorderRadius.circular(15),
                      //boxShadow: [
                      //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.headphones, color: Color(0xff7267af),),
                        SizedBox(width: 10,),
                        Text('CHAT', style: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            IndexedStack(
              index: widget.index,
              children: [

                Padding(                   //screen 1
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 800,
                    width: 361,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text('YOUR NAME', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text('You can only change your name once ',
                              style: TextStyle(fontSize: 14.5),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Container(
                            height:66,
                            width: 350,
                            decoration: BoxDecoration(color: Color(0xffebebeb),borderRadius: BorderRadius.circular(12)),
                            child: TextField(
                                controller: Txtemail,
                                onTapOutside: (event) {
                                  FocusManager.instance.primaryFocus!.unfocus();
                                },

                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)),
                                      borderSide: BorderSide(
                                        width: 0, color:Color(0xffebebeb),),
                                    )
                                ),
                              ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text('NATIONALITY ',
                              style: TextStyle(fontSize: 15.5,fontWeight: FontWeight.bold),),
                          ],
                        ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          height:66,
                          width: 350,
                          decoration: BoxDecoration(color: Color(0xffebebeb),borderRadius: BorderRadius.circular(12)),
                          child: TextField(
                                controller: Txtnation,
                                onTapOutside: (event) {
                                  FocusManager.instance.primaryFocus!.unfocus();
                                },
                                keyboardType: TextInputType.name,
                                style: TextStyle(
                                  color: Colors.grey.shade800, // Change this to the color you want
                                ),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)),
                                      borderSide: BorderSide(
                                        width: 1, color: Colors.black,),
                                    )
                                ),
                              ),
                        ),
                      ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('SHOW GENDER ?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800),),
                            SizedBox(width: 40,),
                            Switch(
                              value: _switchValuemale,
                              focusColor:  Color(0XFF6a5ca8),
                              onChanged: (newValue) {
                                setState(() {
                                  _switchValuemale = newValue;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),










                Container(             ///screen 2
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),







                Padding(                     ///  screen 3
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 500,
                    width: 361,
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: (Imagepath != null) ? FileImage(
                              Imagepath!) : null,
                          child: InkWell(
                            onTap: () => SetImage(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.camera_alt),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            SetgImage();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Icon(Icons.image, color: Color(0XFF6a5ca8),
                                size: 50,),
                              SizedBox(width: 20,),
                              Text('Tap to add your \n profile image',
                                style: TextStyle(
                                    color: Color(0XFF6a5ca8), fontSize: 30),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),







                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 800,
                  width: 361,
                  decoration: BoxDecoration(color: Colors.white),
                ),

              ],

            )


          ],
        ),
      ),
    );
  }

  ImagePicker imagePicker = ImagePicker();
  File? Imagepath;

  Future<void> SetImage() async {
    XFile? image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      Imagepath = File(image!.path);
    });
  }

  Future<void> SetgImage() async {
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      Imagepath = File(image!.path);
    });
  }
}




