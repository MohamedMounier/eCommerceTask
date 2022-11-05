import 'package:ecommerce_design_app/data/models/deal_model.dart';
import 'package:ecommerce_design_app/data/network/mock_json.dart';
import 'package:ecommerce_design_app/presentation/home/controller/home_controller.dart';
import 'package:ecommerce_design_app/presentation/resources/assets_manager.dart';
import 'package:ecommerce_design_app/presentation/resources/color_manager.dart';
import 'package:ecommerce_design_app/presentation/resources/routes_manager.dart';
import 'package:ecommerce_design_app/presentation/resources/size_configuration.dart';
import 'package:ecommerce_design_app/presentation/resources/values_manager.dart';
import 'package:ecommerce_design_app/presentation/widgets/category_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../cart/view/cart_view.dart';
import '../../widgets/address_info.dart';
import '../../widgets/offer_widget.dart';
import '../../widgets/product_widget.dart';
import '../../widgets/search_field.dart';

class HomeView extends GetView {
  HomeController homeController=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: GetBuilder<HomeController>(
          builder: (ctrl) {
            return Scaffold(
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              floatingActionButton: FloatingActionButton(onPressed: (){
                homeController.changeIndex(3);
              },
                backgroundColor: ColorManager.orange,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    FittedBox(child: Text('\$ 91'),),
                    Flexible(child: SvgPicture.asset(AppIcons.home,color: ColorManager.white,))
                  ],
                ),
              ),
              bottomNavigationBar:
              CustomBottomNavBar(homeController: homeController),


      backgroundColor: ColorManager.backGroundColor,
      body: homeController.currentIndex!=0?CartView():homeBody(context),
    );
          }
        ));
  }

  Padding homeBody(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppPading.p20, vertical: AppPading.p22),
          child: SingleChildScrollView(
            child: Column(

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
                      onTap: () {
                        Get.toNamed(Routes.cart);
                      },
                      child: Container(
                        height: screenHeight(context: context, percentage: .05),
                        width: screenWidth(context: context, percentage: .1),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: ColorManager.circleBorder, width: 2)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight(context: context, percentage: .03),
                ),
                SearchField(),
                SizedBox(
                  height: screenHeight(context: context, percentage: .03),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: AddressInfoContainer(
                      title: homeController.addressesList[0].addressType,
                      subtitle:  homeController.addressesList[0].addressInfo,
                    )),
                    Flexible(
                        child: AddressInfoContainer(
                          title: homeController.addressesList[1].addressType,
                          subtitle:  homeController.addressesList[1].addressInfo,
                    )),
                  ],
                ),

                SizedBox(
                  height: screenHeight(context: context, percentage: .03),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explory By Category',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 12),
                    ),
                    Text(
                      'see all (36)',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight(context: context, percentage: .03),
                ),
                Container(
                  height: Get.height * .12,
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 25,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: homeController.categoriesList.length,
                      itemBuilder: (context, index) {
                        homeController.colorsList.shuffle();
                        return CategoryWidget(
                          title: homeController.categoriesList[index].CategoryName,
                          containerColor: homeController.colorsList[0],
                        );
                      }),
                ),
                SizedBox(
                  height: Get.height * .03,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Deals of the day',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: Get.height * .03,
                ),
                // DealInfoCard(
                //   containerColor: ColorManager.lightGrey,
                //   dealModel: homeController.dealsList[0],
                // ),

                Container(
                  height: Get.height*.13,
                  width: double.infinity,

                  child: ListView.builder(
                    //shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                      itemCount: homeController.dealsList.length,
                      itemBuilder: (context, index) {
                    return DealInfoCard(
                      containerColor: ColorManager.lightGrey,
                      dealModel: homeController.dealsList[index],
                    );
                  }),
                ),
                SizedBox(
                  height: Get.height * .03,
                ),
                OfferCard(offerModel: homeController.offerList[0],)
              ],
            ),
          ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      unselectedItemColor: ColorManager.black,
      currentIndex: homeController.currentIndex,
        unselectedLabelStyle: TextStyle(color: Colors.black),

        onTap: (index){
        homeController.changeIndex(index);
      },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.home,color: homeController.currentIndex==0?ColorManager.orange:null),label: 'Grocery'),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.notifications,color: homeController.currentIndex==1?ColorManager.orange:null),label: 'News'),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.favourite,color: homeController.currentIndex==2?ColorManager.orange:null),label: 'Favorites'),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.cart,color: homeController.currentIndex==3?ColorManager.orange:null),label: 'Cart',),
        ]

    );
  }
}
