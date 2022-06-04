// import 'dart:html';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:motion_tab_bar/motiontabbar.dart';
// import 'package:techerr/controller/bottom_navigation_controller.dart';
// import 'package:techerr/dashboard/dashboard_student.dart';
// import 'package:techerr/dashboard/dashboard_teacher.dart';
// import 'package:techerr/view/profile_page.dart';

// class MotionTabBarPages extends StatelessWidget {
//   MotionTabBarPages({ Key? key }) : super(key: key);

//     BottonNavigationController bottonNavigationController = Get.put(BottonNavigationController());

//   final Screen =[
//     profile(),
//     MakeDashboardItemsStudent(),
//     MakeDashboardItemsTeacher(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(()=>
//           IndexedStack(
//           index: bottonNavigationController.selectedIndex.value,
//           children: Screen,
//         ),
//       ),
//       bottomNavigationBar: MotionTabBar(
//         labels: ["profile"," MakeDashboardItemsStudent"," MakeDashboardItemsTeacher"],
//         initialSelectedTab: " MakeDashboardItemsStudent",
//         tabIconColor: Colors.green,
//         tabSelectedColor: Colors.purple,
//         icons: [Icons.home,Icons.person,Icons.settings],
//         textStyle: TextStyle(color: Colors.purple),
//         onTabItemSelected: (index){
//           bottonNavigationController.changeIndex(index);
//         },
//       ),
//     );
//   }
// }