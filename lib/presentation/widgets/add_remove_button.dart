import 'package:ecommerce_design_app/presentation/resources/color_manager.dart';
import 'package:ecommerce_design_app/presentation/resources/size_configuration.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key,required this.isAdd}) : super(key: key);
  final bool isAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:35,
      // screenHeight(context: context, percentage: .04)
      width: 60,
      //screenWidth(context: context, percentage: .1),
      decoration: BoxDecoration(
        color: ColorManager.skyBlue,
        borderRadius: BorderRadius.circular(10)
      ),
      child:isAdd? Icon(Icons.add,color: ColorManager.skyBlueIconColor,):Icon(Icons.remove,color: ColorManager.skyBlueIconColor,),
    );
  }
}
