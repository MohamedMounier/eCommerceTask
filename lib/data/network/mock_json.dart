import 'package:ecommerce_design_app/data/models/deal_model.dart';

class MockJsonObjects{
  static List<Map<String,dynamic>> dealsList=[
    {
      'productID':1,
      'productName':'Summer Sun Ice Cream Pack',
      'pieces':5,
      'locationTime':15,
      'oldPrice':18,
      'newPrice':12,
      'isFavorite':false,


    },
    {
      'productID':2,
      'productName':'Summer Sun Ice Cream Pack',
      'pieces':5,
      'locationTime':15,
      'oldPrice':18,
      'newPrice':12,
      'isFavorite':false,


    },
    {
      'productID':3,
      'productName':'Summer Sun Ice Cream Pack',
      'pieces':5,
      'locationTime':15,
      'oldPrice':18,
      'newPrice':12,
      'isFavorite':false,


    },
  ];

  static List<Map<String,dynamic>> addressList=[
    {
      'addressType':'Home Address',
      'addressInfo':'Mostafa st. No:2 Street x 2',
    },
    {
      'addressType':'Office Address',
      'addressInfo':'Axis Istanbul, B2 Blok floor 2, office 11',
    },

  ];

  static List<Map<String,dynamic>> categoriesList=[
    {
      'CategoryName':'Steak',
    },
    {
      'CategoryName':'Vegetables',
    },
    {
      'CategoryName':'Fruits',
    },
    {
      'CategoryName':'Juice',
    },
    {
      'CategoryName':'Beverage',
    },
    {
      'CategoryName':'Meat',
    },

  ];


  static List<Map<String,dynamic>> offerList=[
    {
      'offerType':'Mega',
      'offerName':'WHOPP',
      'oldPrice':32,
      'newPrice':17,
      'offerExpiresAt':DateTime(2020,12,24),
    },

  ];
}