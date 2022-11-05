import 'package:ecommerce_design_app/presentation/resources/size_configuration.dart';
import 'package:ecommerce_design_app/presentation/resources/values_manager.dart';
import 'package:ecommerce_design_app/presentation/widgets/color_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key,
  required this.title,
  required this.containerColor,
  }) : super(key: key);
  final String title;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ColorContainerWidget(
            height: Get.height*.07,
            width: screenWidth(context: context, percentage: .15),
            containerColor: containerColor,
          ),
          SizedBox(height: AppSize.s8,),
          FittedBox(
            child: Text(title,
            style: Theme.of(context).textTheme.titleMedium,
            ),
          )
        ],
      ),
    );
  }
}
