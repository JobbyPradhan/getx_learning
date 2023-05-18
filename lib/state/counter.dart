import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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

class FavoriteController extends GetxController{
  RxList<String> fruits = ['Orange', 'Banana', 'Apple'].obs;
  RxList tempFruits = [].obs;

  addFavorite(String value){
    tempFruits.add(value);
  }
  removeFavorite(String value){
    tempFruits.remove(value);
  }
}

class ImagePickerController extends GetxController{
  RxString imagePath = ''.obs;
    Future getImage()async{
      final ImagePicker picker = ImagePicker();
      final image = await picker.pickImage(source: ImageSource.gallery);
      if(image != null){
          print("jobb"+image.path);
          imagePath.value = image.path.toString();
      }
    }
}