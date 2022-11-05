import 'package:ecommerce_design_app/data/models/deal_model.dart';
import 'package:ecommerce_design_app/data/network/mock_json.dart';
import 'package:ecommerce_design_app/domain/repository/deals_repo.dart';

class DealsRepoImpl implements DealsRepositroy{

  @override
  void addDealToCart() {
    // TODO: implement addDealToCart
  }

  @override
  List<DealModel> fetchDeals() {
    List<DealModel> dealsList=[];
    MockJsonObjects.dealsList.forEach((element) {
      dealsList.add(DealModel.fromJson(element));
    });
    return dealsList;
  }

}