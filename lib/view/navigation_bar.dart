import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:techerr/controller/bottom_navigation_controller.dart';
import 'package:techerr/dashboard/dashboard_student.dart';
import 'package:techerr/dashboard/dashboard_teacher.dart';
import 'package:techerr/view/home.dart';
import 'package:techerr/view/profile_page.dart';

class NavigationPage extends StatelessWidget {
    NavigationPage({ Key? key }) : super(key: key);
      
      BottonNavigationController bottonNavigationController = Get.put(BottonNavigationController());

  final screen=[
    Home(),
    profile(),
    MakeDashboardItemsStudent(),
    MakeDashboardItemsTeacher(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>
          IndexedStack(
          index: bottonNavigationController.selectedIndex.value,
          children: screen, 
          ),
      ),
        bottomNavigationBar: Obx(()=>
            BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            onTap: (index){
              bottonNavigationController.changeIndex(index);
            },
            currentIndex: bottonNavigationController.selectedIndex.value,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,),
              label: "Home",
              backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "profile",
              backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: "setting",
              backgroundColor: Colors.purple,
              ),
            ],
                    ),
        ),
    );
  }
}