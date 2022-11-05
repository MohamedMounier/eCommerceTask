import 'package:flutter/material.dart';
import 'package:get/get.dart';

double screenHeight({required BuildContext context,required double percentage}){
  return Get.height*percentage;
}
double screenWidth({required BuildContext context,required double percentage}){
  return Get.width*percentage;
}