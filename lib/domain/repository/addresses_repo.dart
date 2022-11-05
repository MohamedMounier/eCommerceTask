import 'package:ecommerce_design_app/data/models/addresses_model.dart';

abstract class AddressesRepo {
  List<AddressModel> fetchAddresses();
}