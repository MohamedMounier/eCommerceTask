import 'package:ecommerce_design_app/data/models/offer_model.dart';

abstract class OfferRepo {
  List<OfferModel> fetchOffers();
}