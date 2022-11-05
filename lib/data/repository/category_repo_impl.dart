import 'package:ecommerce_design_app/data/models/category_model.dart';
import 'package:ecommerce_design_app/data/network/mock_json.dart';
import 'package:ecommerce_design_app/domain/repository/category_repo.dart';

class CategoryRepoImpl implements CategoryRepository{
  @override
  List<CategoryModel> fetchCategories() {
   List<CategoryModel> categoriesList=[];
   MockJsonObjects.categoriesList.forEach((element) {
     categoriesList.add(CategoryModel.fromJson(element));
   });
   return categoriesList;
  }

}