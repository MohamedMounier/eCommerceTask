import 'package:ecommerce_design_app/data/models/deal_model.dart';

abstract class DealsRepositroy{
  List<DealModel>fetchDeals();
  void addDealToCart();
}