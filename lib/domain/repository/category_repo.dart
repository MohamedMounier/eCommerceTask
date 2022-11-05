import 'package:ecommerce_design_app/data/models/category_model.dart';

abstract class CategoryRepository{
  List<CategoryModel> fetchCategories();
}