class DealModel{
  late int productID;
  late String productName;
  late int pieces;
  late int locationTime;
  late num oldPrice;
  late num newPrice;
  late bool isFavorite;


  DealModel();

  DealModel.fromJson(Map<String,dynamic>json){
    this.productID=json['productID'];
    this.productName=json['productName'];
    this.pieces=json['pieces'];
    this.locationTime=json['locationTime'];
    this.oldPrice=json['oldPrice'];
    this.newPrice=json['newPrice'];
    this.isFavorite=json['isFavorite'];
  }
  toMap()=>{
    'productID':this.productID,
    'productName':this.productName,
    'pieces':this.pieces,
    'locationTime':this.locationTime,
    'oldPrice':this.oldPrice,
    'newPrice':this.newPrice,
    'isFavorite':this.isFavorite,
  };
}