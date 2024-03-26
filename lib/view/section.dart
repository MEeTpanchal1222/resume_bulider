import 'dart:io';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_bulider/view/homescreen.dart';
import 'package:resume_bulider/view/slashscreen.dart';
import 'package:resume_bulider/view/input_all.dart';
import 'mysection.dart';

class bottemscreen extends StatelessWidget {
  const bottemscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottemScreen();
  }
}
class BottemScreen extends StatefulWidget {
  const BottemScreen({super.key});

  @override
  State<BottemScreen> createState() => _SectionState();
}
class _SectionState extends State<BottemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar:CurvedNavBar(
            actionButton: CurvedActionBar(
                onTab: (value) {
                  /// perform action here
                  print(value);
                },
                activeIcon: InkWell(
                  onTap: () {
                    setState(() {
                      _previewPDF();
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration:
                    BoxDecoration(color: Color(0xff6b58b1), shape: BoxShape.circle),
                    child: Icon(
                      Icons.downloading_sharp,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                inActiveIcon: InkWell(
                  child: Container(
                    padding: EdgeInsets.all(18),
                    decoration:
                    BoxDecoration(color: Color(0XFF6a5ca8), shape: BoxShape.circle),
                    child: Icon(
                      Icons.remove_red_eye,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                text: "Preview"),
            activeColor: Color(0XFF6a5ca8),
            navBarBackgroundColor: Colors.white,
            inActiveColor: Colors.black45,
            appBarItems: [
              FABBottomAppBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    color: Color(0XFF6a5ca8),
                  ),
                  inActiveIcon: Icon(
                    Icons.home,
                    color: Colors.black54,
                  ),
                  text: 'Home'),
              FABBottomAppBarItem(
                  activeIcon: Icon(
                    Icons.edit,
                    color: Color(0XFF6a5ca8),
                  ),
                  inActiveIcon: Icon(
                    Icons.edit,
                    color: Colors.black54,
                  ),
                  text: 'Section'),
              FABBottomAppBarItem(
                  activeIcon: Icon(
                    Icons.photo_rounded,
                    color:Color(0XFF6a5ca8),
                  ),
                  inActiveIcon: Icon(
                    Icons.photo_rounded,
                    color: Colors.black54,
                  ),
                  text: 'Designs'),
              FABBottomAppBarItem(
                  activeIcon: Icon(
                    Icons.account_circle_rounded,
                    color: Color(0XFF6a5ca8),
                  ),
                  inActiveIcon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black54,
                  ),
                  text: 'Account'),


            ],
            bodyItems: [
              homescreen(),
              editscreen(),
              slashscreen(),
              slashscreen(),
            ],
            actionBarView: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 550,
                  width: 400,
                  color: Colors.white,
                  child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: 150,width: 120,
                                child: (Imagepath != null )?Image.file(Imagepath!,fit: BoxFit.fill,):null),
                           Stack(
                             children: [
                               Container(
                               height: 370,width: 120,
                               decoration: BoxDecoration(color: Colors.grey.shade400),
                             ),
                             Column(
                               children: [
                                 SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Basic Info",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                                     SizedBox(width: 38,),
                                   ],
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     SizedBox(height: 40,child: VerticalDivider(color: Colors.black87,width: 20,)),
                                     Column(
                                       children: [
                                         Row(
                                           children: [
                                             Text(textFieldnation,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                                             Text((male)?' , Male':' , Female',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                                           ],
                                         ),
                                         Row(
                                           children: [
                                             Text(" Marital - ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800)),
                                             Text((marride)?'Marride':'Unmarride',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                                           ],
                                         ),
                                         Row(
                                           children: [
                                             Text("DOB - ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800)),
                                             Text(textFielddob,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                                           ],
                                         ),
                                       ],
                                     )
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Technical Skills",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                                     SizedBox(width: 5,)
                                   ],
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     SizedBox(height: 40,child: VerticalDivider(color: Colors.black87,width: 20,)),
                                     Column(
                                       children: [
                                         SizedBox(
                                           width: 90,
                                           child: Row(
                                             children: [
                                               Flexible(child: Text(textFieldtech,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,),overflow: TextOverflow.visible)),
                                             ],
                                           ),
                                         ),

                                       ],
                                     )
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text(" Skills ",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                                     SizedBox(width: 60,),
                                   ],
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     SizedBox(height: 40,child: VerticalDivider(color: Colors.black87,width: 20,)),
                                     Column(
                                       children: [
                                         SizedBox(
                                           width: 90,
                                           child: Row(
                                             children: [
                                               Flexible(child: Text(textFieldskill,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,),overflow: TextOverflow.visible)),
                                             ],
                                           ),
                                         ),

                                       ],
                                     )
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Spoken Language",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                                   ],
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     SizedBox(height: 40,child: VerticalDivider(color: Colors.black87,width: 20,)),
                                     Column(
                                       children: [
                                         SizedBox(
                                           width: 95,
                                           child: Row(
                                             children: [
                                               Flexible(child: Text(textFieldspoke,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,),overflow: TextOverflow.visible)),
                                             ],
                                           ),
                                         ),

                                       ],
                                     )
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Interest",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                                     SizedBox(width: 50,)
                                   ],
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     SizedBox(height: 40,child: VerticalDivider(color: Colors.black87,width: 20,)),
                                     Column(
                                       children: [
                                         SizedBox(
                                           width: 95,
                                           child: Row(
                                             children: [
                                               Flexible(child: Text(textFieldintr,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,),overflow: TextOverflow.visible)),
                                             ],
                                           ),
                                         ),

                                       ],
                                     )
                                   ],
                                 ),
                               ],
                             )
                             ]
                           ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Container(
                                height: 80,width: 280,
                                decoration: BoxDecoration(color: Colors.grey.shade700),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(textFieldname,style: TextStyle(fontSize: 30,color: Colors.white),),
                                    Row(
                                      children: [
                                        SizedBox(width: 5,),
                                        Image.asset('assest/email.png',height: 15,width: 15,color: Colors.white,),
                                           SizedBox(width: 5,),
                                           Text(textFieldmail,style: TextStyle(color: Colors.white,fontSize: 9),),
                                        SizedBox(width: 8,),
                                        Image.asset('assest/iphone.png',height: 15,width: 15,color: Colors.white,),
                                        SizedBox(width: 5,),
                                        Text(textFieldphone,style: TextStyle(color: Colors.white,fontSize: 9),),
                                        SizedBox(width: 8,),
                                        Image.asset('assest/pin.png',height: 15,width: 15,color: Colors.white,),
                                        SizedBox(width: 5,),
                                        Text(textFieldloction,style: TextStyle(color: Colors.white,fontSize: 9),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 15,),
                              Column(
                                children: [
                                  Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(textFieldprofile,style: TextStyle(color: Colors.blue.shade700,fontWeight: FontWeight.w900,fontSize: 15)),
                                      SizedBox(width: 90,),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 250,
                                    child: Row(
                                      children: [
                                        Flexible(child :Text(textFieldintro,style: TextStyle(color: Colors.black,fontSize: 10)
                                      ,overflow: TextOverflow.visible)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Honors & Awards',style: TextStyle(color: Colors.blue.shade700,fontWeight: FontWeight.w900,fontSize: 15)),
                                      SizedBox(width: 140,),
                                    ],
                                  ),
                                  SizedBox(width: 280,child: Divider(color: Colors.grey,thickness: 4,)),
                                  SizedBox(
                                    height: 80,
                                    width: 250,
                                    child: Row(
                                      children: [
                                        Text(textFieldyear,style: TextStyle(color: Colors.black,fontSize: 13)),
                                        SizedBox(child: VerticalDivider(color: Colors.grey,thickness: 4,)),
                                  Flexible(child :Column(
                                    children: [
                                      Text(textFieldachi,style: TextStyle(fontWeight: FontWeight.w700),),
                                      Text(textFielddesc2,style: TextStyle(color: Colors.black,fontSize: 10)
                                          ,overflow: TextOverflow.visible),
                                    ],
                                  )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Position of Responsibility',style: TextStyle(color: Colors.blue.shade700,fontWeight: FontWeight.w900,fontSize: 15)),
                                      SizedBox(width: 90,),
                                    ],
                                  ),
                                  SizedBox(width: 280,child: Divider(color: Colors.grey,thickness: 4,)),
                                  SizedBox(
                                    height: 50,
                                    width: 250,
                                    child: Column(
                                      children: [
                                        Text(textFielddesi,style: TextStyle(fontWeight: FontWeight.w700),),
                                        Flexible(child :
                                            Text(textFielddesc,style: TextStyle(color: Colors.black,fontSize: 10)
                                                ,overflow: TextOverflow.visible),

                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height:20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Tecnical Skill',style: TextStyle(color: Colors.blue.shade700,fontWeight: FontWeight.w900,fontSize: 15)),
                                      SizedBox(width: 170,),
                                    ],
                                  ),
                                  SizedBox(width: 280,child: Divider(color: Colors.grey,thickness: 4,)),
                                  SizedBox(
                                    height: 50,
                                    width: 250,
                                    child: Column(
                                      children: [
                                        Flexible(child :
                                        Text(textFielddesc3,style: TextStyle(color: Colors.black,fontSize: 10)
                                            ,overflow: TextOverflow.visible),

                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
      ),
    );
  }
  void _previewPDF() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            children: [

            ],
          );
        },
      ),
    );

    final pdfBytes = await pdf.save();
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdfBytes,
    );
  }
}
// bool switchValuemale = false;
// bool switchValueage = false;
// bool switchValuemarrige = false;
// File? Imagepath;
// String textFieldnation = '';
// String textFieldface = '';
// String textFieldlink1 = '';
// String textFieldlink2 = '';
// String textFieldlink3 = '';
// String textFieldname = '';
// String textFielddob = '';
// String textFieldmail = '';
// String textFieldphone = '';
// String textFieldloction = '';
// String textFieldaddress = '';
// String textFieldprofile = '';
// String textFieldintro = '';
// String textFielddesi = '';
// String textFielddesc = '';
// String textFieldachi = '';
// String textFieldyear = '';
// String textFielddesc2 = '';
// String textFieldtech = '';
// String textFielddesc3 = '';
// String textFieldskill = '';
// String textFielddesc4 = '';
// String textFieldspoke = '';
// String textFieldintr = '';
//
//
//
// bool male = false; //on tap male = true
// bool marride = false;

