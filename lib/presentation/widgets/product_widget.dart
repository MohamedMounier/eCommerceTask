import 'package:ecommerce_design_app/data/models/deal_model.dart';
import 'package:ecommerce_design_app/presentation/resources/assets_manager.dart';
import 'package:ecommerce_design_app/presentation/resources/color_manager.dart';
import 'package:ecommerce_design_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DealInfoCard extends StatelessWidget {
   DealInfoCard({Key? key,required this.containerColor,required this.dealModel}) : super(key: key);
  final Color containerColor;
  late DealModel dealModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: Get.height*.122,
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          favouriteContainer(dealModel.isFavorite),
          SizedBox(width: AppSize.s14,),
          productData(context),
          SizedBox(width: AppSize.s14,),

        ],
      ),
    );
  }

  Column productData(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(dealModel.productName,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 12),
              ),
            ),
            SizedBox(height: Get.height*.01,),
            FittedBox(
              child: RichText(text: TextSpan(text: 'Pieces',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(text: '${dealModel.pieces}',
                      style: Theme.of(context).textTheme.titleMedium,

                  ),
                ]
              ),
              )
            ),
            SizedBox(height: Get.height*.01,),
            Row(
              children: [
                Icon(Icons.location_on_outlined,color: ColorManager.lightBlack.withOpacity(.5),size: 15,),
                SizedBox(width: Get.width*.01,),

                FittedBox(
                  child:RichText(text: TextSpan(text: '${dealModel.locationTime} ',
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(text: 'Minutes Away',
                          style: Theme.of(context).textTheme.bodySmall,

                        ),
                      ]
                  ),
                  )
                ),
              ],
            ),
            SizedBox(height: Get.height*.01,),
            Row(
              children: [
                FittedBox(child: Text('\$ ${dealModel.newPrice}',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(color: ColorManager.red)
                )),
                SizedBox(width: Get.width*.03,),

                FittedBox(child: Text('\$ ${dealModel.oldPrice}',

                style: Theme.of(context).textTheme.titleLarge!.copyWith(decoration: TextDecoration.lineThrough,color: ColorManager.discountGrey)
                ),
                ),
              ],
            ),
          ],
        );
  }

  Stack favouriteContainer(bool isFavourite) {
    return Stack(
          children: [
            Container(
              height:  Get.height*.12,
              width: Get.width*.25,
              decoration: BoxDecoration(
                color:ColorManager.veryLightPink,
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(color: ColorManager.grey),

              ),
            ),
            InkWell(
              onTap: (){

              },
              child: Positioned(
                top: -10,
                  left: -10,
                  child: CircleAvatar(
                    foregroundColor: ColorManager.grey,
                    backgroundColor: ColorManager.white,
                child: isFavourite?Icon(Icons.favorite,color: ColorManager.red,):Icon(Icons.favorite_border_outlined,size: 15,)
                //SvgPicture.asset(AppIcons.),
              )),
            )
          ],
        );
  }
}
