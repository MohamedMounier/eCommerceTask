class OfferModel{
  late String offerType;
  late String offerName;
  late int oldPrice;
  late int newPrice;
  late DateTime offerExpiresAt;

  OfferModel.fromJson(Map<String,dynamic>json){
    this.offerType=json['offerType'];
    this.offerName=json['offerName'];
    this.oldPrice=json['oldPrice'];
    this.newPrice=json['newPrice'];
    this.offerExpiresAt=json['offerExpiresAt'];
  }
  toMap()=>{
    'offerType':this.offerType,
    'offerName':this.offerName,
    'oldPrice':this.oldPrice,
    'newPrice':this.newPrice,
    'offerExpiresAt':this.offerExpiresAt,
  };


}