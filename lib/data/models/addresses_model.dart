class AddressModel{
  late String addressType;
  late String addressInfo;

  AddressModel.fromJson(Map<String,dynamic>json){
    this.addressType=json['addressType'];
    this.addressInfo=json['addressInfo'];

  }
  toMap()=>{
    'addressType':this.addressType,
    'addressInfo':this.addressInfo,

  };
}