import 'package:cupertino_range_slider_improved/cupertino_range_slider.dart';
import 'package:get/get.dart';

class RangeController extends GetxController{

 RxDouble min=1.0.obs;
 RxDouble max=100.0.obs;
 RxDouble minValue=10.0.obs;
 RxDouble maxValue=100.0.obs;

 void onChangemin(double value){
   minValue.value=value;
 }
 void onChangemax(double value){
   maxValue.value=value;
 }

}

class CalenderController extends GetxController{
  RxString title='Choose from calender'.obs;

  void onChangeValue(String value){
    title.value=value;
  }
}