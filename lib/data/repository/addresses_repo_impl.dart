import 'package:ecommerce_design_app/data/models/addresses_model.dart';
import 'package:ecommerce_design_app/data/network/mock_json.dart';
import 'package:ecommerce_design_app/domain/repository/addresses_repo.dart';

class AddressesRepoImpl implements AddressesRepo{
  @override
  List<AddressModel> fetchAddresses() {
    List<AddressModel> addressesList=[];
    MockJsonObjects.addressList.forEach((element) {
      addressesList.add(AddressModel.fromJson(element));
    });
    return addressesList;
  }

}