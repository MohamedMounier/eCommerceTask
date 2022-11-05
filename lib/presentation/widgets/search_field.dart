import 'package:ecommerce_design_app/presentation/resources/color_manager.dart';
import 'package:ecommerce_design_app/presentation/resources/size_configuration.dart';
import 'package:ecommerce_design_app/presentation/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: screenHeight(context: context, percentage: .06),
      decoration: BoxDecoration(
        color: ColorManager.veryLightBlue,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorManager.grey),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppPading.p8),
        child: TextFormField(
          textAlign: TextAlign.start,

          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search,color: ColorManager.black,size: 30,),
            hintText: 'search in thousands of products',

          ),
        ),
      )
    );
  }
}
