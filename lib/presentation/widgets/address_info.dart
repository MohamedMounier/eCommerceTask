import 'package:ecommerce_design_app/presentation/resources/size_configuration.dart';
import 'package:ecommerce_design_app/presentation/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import 'color_container.dart';

class AddressInfoContainer extends StatelessWidget {
  const AddressInfoContainer({Key? key,
  required this.title,
  required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPading.p8),
      //height: screenHeight(context: context, percentage: .1),
      width: screenWidth(context: context, percentage: .42),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorManager.grey),

      ),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColorContainerWidget(),
          SizedBox(width: AppSize.s10,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(subtitle,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 9),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
