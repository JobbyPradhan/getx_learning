import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter = 1.obs;

  void increment(){
    counter.value +=1;
  }

}

class OpacityController extends GetxController{
  RxDouble opacity = .4.obs;

  setOpacity(double value){
    opacity.value = value;
  }
}

class SwitchController extends GetxController{
  RxBool isOpen = false.obs;

  setOnOff(bool value){
    isOpen.value = value;
  }
}