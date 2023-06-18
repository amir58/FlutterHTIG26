
import 'package:flutter26/dart/inheritance/screen_one.dart';
import 'package:flutter26/dart/inheritance/screen_two.dart';

void main(){
  var object1 = ScreenOne("ScreenOne");
  object1.startLoading();
  object1.stopLoading();
  object1.printData();


  var object2 = ScreenTwo("ScreenTwo");
  object2.printScreenName();

  // var base = BaseScreen("screenName");
}




