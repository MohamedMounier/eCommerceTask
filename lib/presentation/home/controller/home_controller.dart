import 'package:ecommerce_design_app/data/models/addresses_model.dart';
import 'package:ecommerce_design_app/data/models/category_model.dart';
import 'package:ecommerce_design_app/data/models/deal_model.dart';
import 'package:ecommerce_design_app/data/models/offer_model.dart';
import 'package:ecommerce_design_app/data/repository/addresses_repo_impl.dart';
import 'package:ecommerce_design_app/data/repository/category_repo_impl.dart';
import 'package:ecommerce_design_app/data/repository/deals_repo_impl.dart';
import 'package:ecommerce_design_app/data/repository/offer_repo_impl.dart';
import 'package:ecommerce_design_app/domain/repository/addresses_repo.dart';
import 'package:ecommerce_design_app/domain/repository/category_repo.dart';
import 'package:ecommerce_design_app/domain/repository/deals_repo.dart';
import 'package:ecommerce_design_app/domain/repository/offer_repo.dart';
import 'package:ecommerce_design_app/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int currentIndex=0;

  List<Color> colorsList=[
    ColorManager.veryLightSkyBlue,
    ColorManager.veryLightPink,
    ColorManager.yellow,
    ColorManager.discountGrey,
    ColorManager.lightPurple,
    ColorManager.pink,

  ];
  DealsRepositroy dealsRepositroy = DealsRepoImpl();
  AddressesRepo addressesRep = AddressesRepoImpl();
  CategoryRepository categoryRepo = CategoryRepoImpl();
  OfferRepo offerRepo = OfferRepoImpl();

  late List<DealModel> dealsList=[];
  late List<AddressModel> addressesList=[];
  late List<CategoryModel> categoriesList=[];
  late List<OfferModel> offerList=[];

  @override
  onInit() {
    fetchDeals();
    fetchAddresses();
    fetchCategories();
    fetchOffers();
  }

  List<DealModel> fetchDeals() {
    if(dealsList.isNotEmpty){
      return dealsList;
    }else{
      dealsList=dealsRepositroy.fetchDeals();
      return dealsList ;

    }

  }
  List<AddressModel> fetchAddresses() {
    addressesList=addressesRep.fetchAddresses();
    return addressesList ;

  }
  List<CategoryModel> fetchCategories() {
    categoriesList=categoryRepo.fetchCategories();
    return categoriesList ;

  }
  List<OfferModel> fetchOffers() {
    offerList=offerRepo.fetchOffers();
    return offerList ;

  }

  changeIndex(int index){
    currentIndex=index;
    update();
  }
}
