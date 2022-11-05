import 'package:ecommerce_design_app/presentation/cart/controller/cart_controller.dart';
import 'package:get/get.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(CartController());
  }

}