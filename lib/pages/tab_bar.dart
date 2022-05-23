// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:techerr/component/button.dart';
// import 'package:techerr/component/servic.dart';

// import '../main.dart';

// class TabBarSliverAppbar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: DefaultTabController(
//           length: 2,
//           child: NestedScrollView(
//             headerSliverBuilder: (context, value) {
//               return [
//                 SliverAppBar(
//                   title: Text("maher"),
//                   bottom: TabBar(
//                     tabs: [
//                       Tab(icon: Icon(Icons.map), text: 'Student'),
//                       Tab(icon: Icon(Icons.portrait), text: 'Teshear'),
//                     ],
//                   ),
//                 ),
//               ];
//             },
//             body: TabBarView(
//               children: [
//               //  buildImages(),
//                 buildTeshear(),
//               ],
//             ),
//           ),
//         ),
//               floatingActionButton: SpeedDial(
//         animatedIcon: AnimatedIcons.menu_close,
//         animatedIconTheme: IconThemeData(size: 22),
//         visible: true,
//         closeManually: false,
//         curve: Curves.bounceIn,
//         overlayColor: Colors.black,
//         overlayOpacity: 0.5,
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.black,
//         elevation: 8.0,
//         shape: CircleBorder(),
//         children: [
//           SpeedDialChild(
//             child: Icon(Icons.print),
//             backgroundColor: Colors.white,
//             foregroundColor: Colors.black,
//             label: "print",
//             labelStyle: TextStyle(fontSize: 16),
//             onTap: (){},
//           ),
//           SpeedDialChild(
//             child: Icon(Icons.email),
//             backgroundColor: Colors.white,
//             foregroundColor: Colors.black,
//             label: "Email",
//             labelStyle: TextStyle(fontSize: 16),
//             onTap: (){},
//           ),
//           SpeedDialChild(
//             child: Icon(Icons.upload_file),
//             backgroundColor: Colors.white,
//             foregroundColor: Colors.black,
//             label: "upload",
//             labelStyle: TextStyle(fontSize: 16),
//             onTap: (){},
//           ),
//         ],
//       ),
//       );

//   // Widget buildImages() => GridView.builder(
//   //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//   //         crossAxisCount: 2,
//   //       ),
//   //       itemCount: 5,
//   //       itemBuilder: (context, index) => //buttom(),//go to bottom
//   //     );


//     Widget buildTeshear() => GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//         ),
//         itemCount: 2,
//         itemBuilder: (context, index) => service(index: index),//go to service
//       );

// }