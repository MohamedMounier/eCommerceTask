import 'package:ecommerce_design_app/data/models/offer_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/color_manager.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key,required this.offerModel}) : super(key: key);
  final OfferModel offerModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height*.17,
      decoration: BoxDecoration(
        color:Colors.pink.withOpacity(.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spa,
        children: [
          //Flexible(child: SizedBox()),
        //  Spacer(),
          Expanded(
            flex: 3,
            child: Container(
                color: Colors.green,
                child: SizedBox()),
          ),
          Expanded(
            flex: 4,
            child: Column(
             // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height*.02 ,),
                Text(offerModel.offerType,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.red),
                ),
                RichText(
                  text: TextSpan(
                    children:[
                      TextSpan(
                        text: offerModel.offerName,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith()

                ),
                      TextSpan(
                          text: 'E',
                        style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.red)
                      ),
                      TextSpan(
                          text: 'R',
                          style: Theme.of(context).textTheme.displayLarge!.copyWith()

                      )
                    ]
                  ),
                ),
                Row(
                  children: [
                    FittedBox(child: Text('\$ ${offerModel.oldPrice}',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: ColorManager.red)
                    )),
                    SizedBox(width: Get.width*.07,),

                    FittedBox(child: Text('\$ ${offerModel.newPrice}',

                        style: Theme.of(context).textTheme.titleLarge!.copyWith(decoration: TextDecoration.lineThrough,color: ColorManager.white)
                    ),
                    ),

                  ],
                ),
                SizedBox(height: Get.height*.02 ,),

                FittedBox(
                  child: Text('* Available until 24 December 2010',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
