

import 'package:ecommerce_design_app/presentation/cart/binding/cart_binding.dart';
import 'package:ecommerce_design_app/presentation/cart/view/cart_view.dart';
import 'package:ecommerce_design_app/presentation/home/binding/home_binding.dart';
import 'package:ecommerce_design_app/presentation/home/view/home_view.dart';
import 'package:get/get.dart';

class Routes {
  static const String spalshRoute='/';
  static const String homeRoute='/home';
  static const String cart='/cart';



}

abstract class RoutesManager{
  static final List<GetPage> routesList=[
    GetPage(
        name: Routes.homeRoute,
        page: ()=>HomeView(),
        binding:HomeBinding()
    ),
    GetPage(
        name: Routes.cart,
        page: ()=>CartView(),
        binding:CartBinding()
    ),

  ];
}