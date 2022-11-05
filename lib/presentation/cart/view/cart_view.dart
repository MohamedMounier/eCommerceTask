import 'package:ecommerce_design_app/presentation/resources/size_configuration.dart';
import 'package:ecommerce_design_app/presentation/widgets/color_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';
import '../../widgets/add_remove_button.dart';

class CartView extends GetView{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          backgroundColor: ColorManager.backGroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPading.p20,vertical: AppPading.p22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(80),
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(200),
                        ),
                        color: ColorManager.red,



                      ),
                      height: screenHeight(context: context, percentage: .06),
                      padding: const EdgeInsets.only(
                          right: AppPading.p20, left: AppPading.p8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: ColorManager.white,
                          ),
                          SizedBox(
                            width: AppSize.s10,
                          ),
                          Text(
                            'Mustafa St.',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      child: Container(
                        height: screenHeight(context: context, percentage: .05) ,
                        width: screenWidth(context: context, percentage: .1),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: ColorManager.circleBorder,width: 2)
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenHeight(context: context, percentage: .04),),
                Text('Cart',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 15),
                ),
                SizedBox(height: screenHeight(context: context, percentage: .04),),

               Expanded(
                 child: ListView.separated(itemBuilder: (context,index){
                   return  ListTile(

                     leading: ColorContainerWidget(
                       height: Get.height*.07,
                       width: screenWidth(context: context, percentage: .15),
                     ),
                     title: Text('Turkish Steak',
                       style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 12),
                     ),
                     subtitle: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('137 Grams',
                           style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 10),
                         ),
                         SizedBox(height: 3,),
                         Text('\$12',
                           style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18,color: ColorManager.red),
                         ),
                       ],
                     ),
                     trailing: Container(
                       width: screenWidth(context: context, percentage: .35),
                       child: Row(
                         children: [
                           Spacer(),
                           Flexible(child: AddButton(isAdd: true,)),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: AppPading.p16),
                             child: Text('0',
                               style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 19),
                             ),
                           ),
                           Flexible(child: AddButton(isAdd: false,)),
                         ],
                       ),
                     ),
                     // RichText(text: TextSpan(
                     //   text: '137 Grams',
                     //   style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 10),
                     //   children: [
                     //     TextSpan(
                     //
                     //     )
                     //   ]
                     // )
                     // )

                   );
                 },
                     separatorBuilder: (context,index){
                   return SizedBox(height: Get.height*.03,);
                     }, itemCount: 8),
               )
              ],
            ),
          ),
        )
    );
  }

}