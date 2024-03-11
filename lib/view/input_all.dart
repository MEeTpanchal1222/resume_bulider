import 'package:flutter/material.dart';

class inputallscreen extends StatelessWidget {
  const inputallscreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as int;
    Future<void> setimage()
    async {
      xfile? Image = await imagepicker.pickImage(Source : Imagesource.gallary);
      GestureDetector(
        onTap: () {


        },
      );
    }
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
 Imagepicker imagepicker = Imagepicker();

class _InputAllScreenState extends State<InputAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebebeb),
      appBar: AppBar(
        backgroundColor: Color(0XFF6a5ca8),
        actions: [
          Text(
            (widget.index == 0) ? 'Basic Info' :(widget.index == 1) ? 'Contact Details' :(widget.index == 2) ? 'Profile Image':(widget.index == 3) ? 'Career Summary':(widget.index == 4) ? 'Position Of Responsibility':(widget.index == 5) ? 'Internship':(widget.index == 6) ? 'professional qualification':(widget.index == 7) ? 'educational background':(widget.index == 8) ? 'Certificates':(widget.index == 9) ? 'Academic projects':(widget.index == 10) ? 'Achievements':(widget.index == 11) ? 'Co-Curricular Activites':(widget.index == 12) ? 'Technical Skills':(widget.index == 13) ? 'Soft Skills':(widget.index == 14) ? 'Interests':(widget.index == 15) ? 'Spoken languages':(widget.index == 16) ? 'Preferences':'',// Access index using widget.index
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 20,
            ),
          ),
          SizedBox(width: (widget.index==4  || widget.index == 7 ||widget.index ==6)?40:(widget.index == 14)?120:100),
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
                    decoration:BoxDecoration(color: Colors.transparent,border: Border.all(color:  Color(0xff7267af),width: 2),borderRadius: BorderRadius.circular(15),
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
                    width: 120,
                    decoration:BoxDecoration(color: Colors.transparent,border: Border.all(color:  Color(0xff7267af),width: 2),borderRadius: BorderRadius.circular(15),
                      //boxShadow: [
                      //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_border,color: Color(0xff7267af),),
                        SizedBox(width: 10,),
                        Text('DEFAULT',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration:BoxDecoration(color: Colors.transparent,border: Border.all(color:  Color(0xff7267af),width: 2),borderRadius: BorderRadius.circular(15),
                      //boxShadow: [
                      //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.headphones,color: Color(0xff7267af),),
                        SizedBox(width: 10,),
                        Text('CHAT',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
           IndexedStack(
             index: widget.index,
             children: [
               Container(
                 height: 800,
                 width: 361,
                 decoration: BoxDecoration(color: Colors.white),
                 child: Column(
                   children: [
                     SizedBox(height: 30,),
                     Row(
                       children: [
                         SizedBox(width: 20,),
                         Text('YOUR NAME',style: TextStyle(fontSize: 20),),
                       ],
                     ),
                     SizedBox(height: 5,),
                     Row(
                       children: [
                         SizedBox(width: 20,),
                         Text('You can only change your name once ',style: TextStyle(fontSize: 14.5),),
                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                       child: TextField(
                         controller: Txtemail,
                         onTapOutside: (event){
                           FocusManager.instance.primaryFocus!.unfocus();
                         },

                         keyboardType: TextInputType.name,
                         decoration: InputDecoration(
                           hoverColor: Color(0xffebebeb) ,
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                             borderSide: BorderSide(width: 1,color: Colors.black,),
                           )
                         ),
                       ),
                     )
                   ],
                 ),
               ),
               Container(
                 height: 800,
                 width: 361,
                 decoration: BoxDecoration(color: Colors.white),
               ),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Container(
                   height: 500,
                   width: 361,
                   decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.image,color: Color(0XFF6a5ca8),size: 50,),
                            SizedBox(width: 20,),
                            Text('Tap to add your \n profile image',style: TextStyle(color: Color(0XFF6a5ca8),fontSize: 30),),
                          ],
                        )
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
}























// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// class inputallscreen extends StatelessWidget {
//   const inputallscreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final index = ModalRoute.of(context)?.settings.arguments;
//     return InputAllScreen(index: index);
//   }
// }
// class InputAllScreen extends StatefulWidget {
//    int index;
//   const InputAllScreen({Key? key, required this.index}) : super(key: key);
//
//   @override
//   State<InputAllScreen> createState() => _InputAllScreenState();
// }
//
// class _InputAllScreenState extends State<InputAllScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0XFF6a5ca8),
//         actions: [
//           Text((index==1)?'Basic Info', style: TextStyle(
//             color: Colors.white, letterSpacing: 1.5, fontSize: 30,),),
//           SizedBox(width: 90,),
//
//           Icon(Icons.edit, color: Colors.white, size: 35,),
//           SizedBox(width: 8,),
//         ],
//         elevation: 4,
//       ),
//
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(13.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     height: 50,
//                     width: 100,
//                     decoration:BoxDecoration(color: Colors.white,border: Border.all(color:  Color(0xff7267af),width: 2),borderRadius: BorderRadius.circular(15),
//                       //boxShadow: [
//                       //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.book,color: Color(0xff7267af),),
//                         SizedBox(width: 10,),
//                         Text('GUIDE',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     width: 120,
//                     decoration:BoxDecoration(color: Colors.white,border: Border.all(color:  Color(0xff7267af),width: 2),borderRadius: BorderRadius.circular(15),
//                       //boxShadow: [
//                       //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.star_border,color: Color(0xff7267af),),
//                         SizedBox(width: 10,),
//                         Text('DEFAULT',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     width: 100,
//                     decoration:BoxDecoration(color: Colors.white,border: Border.all(color:  Color(0xff7267af),width: 2),borderRadius: BorderRadius.circular(15),
//                       //boxShadow: [
//                       //BoxShadow(color: Colors.grey,offset:Offset(0, 2),blurRadius: 8 ),]
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.headphones,color: Color(0xff7267af),),
//                         SizedBox(width: 10,),
//                         Text('CHAT',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//
//
//           ],
//         ),
//       ),
//     );
//   }
//}























// import 'package:flutter/material.dart';
//
// class inputallscreen extends StatelessWidget {
//   const inputallscreen({Key key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Extract the index argument passed from the previous page
//     final index = ModalRoute.of(context).settings.arguments;
//
//     return InputAllScreen(index: index);
//   }
// }
//
// class InputAllScreen extends StatefulWidget {
//   final int index; // Define a variable to hold the index
//
//   const InputAllScreen({Key key, this.index}) : super(key: key);
//
//   @override
//   State<InputAllScreen> createState() => _InputAllScreenState();
// }
//
// class _InputAllScreenState extends State<InputAllScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0XFF6a5ca8),
//         actions: [
//           // Use the index to conditionally display text
//           Text(
//             widget.index == null ? 'Basic Info' : 'Index: ${widget.index}',
//             style: TextStyle(
//               color: Colors.white,
//               letterSpacing: 1.5,
//               fontSize: 30,
//             ),
//           ),
//           SizedBox(width: 90),
//           Icon(Icons.edit, color: Colors.white, size: 35),
//           SizedBox(width: 8),
//         ],
//         elevation: 4,
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(13.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   // Your containers and other widgets go here
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
