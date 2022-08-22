import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getSCreenHeight(){
    return Get.height;
  }
  static getSCreenWidth(){
    return Get.width;
  }
  static getHeight(double pixels){
    double x = getSCreenHeight()/pixels;
    return getSCreenHeight()/x;
  }
  static getWidth(double pixels){
    double x = getSCreenWidth()/pixels;
    return getSCreenWidth()/x;
  }
}