class CategoryModel{
  late String CategoryName;



  CategoryModel.fromJson(Map<String,dynamic>json){
    this.CategoryName=json['CategoryName'];
   // this.addressInfo=json['addressInfo'];

  }
  toMap()=>{
    'CategoryName':this.CategoryName,
    //'addressInfo':this.addressInfo,

  };
}