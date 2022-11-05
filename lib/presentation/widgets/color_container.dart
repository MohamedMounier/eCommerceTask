import 'package:ecommerce_design_app/presentation/resources/size_configuration.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class ColorContainerWidget extends StatelessWidget {
  const ColorContainerWidget({Key? key,
  this.height,
    this.width,
    this.containerColor
  }) : super(key: key);
  final double? height;
  final double? width;
  final Color? containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??screenHeight(context: context, percentage: .05),
      width: width??screenWidth(context: context, percentage: .1),
      decoration: BoxDecoration(
        color:containerColor?? ColorManager.grey,
        borderRadius: BorderRadius.circular(10),
       // border: Border.all(color: ColorManager.grey),

      ),
    );
  }
}
