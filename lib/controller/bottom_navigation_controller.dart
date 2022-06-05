import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';

class BottonNavigationController extends GetxController{
  var selectedIndex = 0.obs;


  void changeIndex(int index){
  selectedIndex.value=index;
  }
}