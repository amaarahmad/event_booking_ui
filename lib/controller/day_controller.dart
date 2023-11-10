import 'package:get/get.dart';

class DayController extends GetxController {

  RxInt selectedIndex=0.obs;

  List<String>dayNames=[
    'Today',
    'Tomorrow',
    'This week'
  ];

  void changeIndex(int index){
    selectedIndex.value=index;
  }

}