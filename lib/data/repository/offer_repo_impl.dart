import 'package:ecommerce_design_app/data/models/offer_model.dart';
import 'package:ecommerce_design_app/data/network/mock_json.dart';
import 'package:ecommerce_design_app/domain/repository/offer_repo.dart';

class OfferRepoImpl implements OfferRepo{
  @override
  List<OfferModel> fetchOffers() {
    List<OfferModel> offersList=[];
    MockJsonObjects.offerList.forEach((element) {
      offersList.add(OfferModel.fromJson(element));
    });
    return offersList;
  }

}