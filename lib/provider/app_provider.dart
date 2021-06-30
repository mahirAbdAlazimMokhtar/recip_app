import 'package:flutter/foundation.dart';
import 'package:recip_app/model/category_model.dart';
class AppProvider extends ChangeNotifier {
  final List<CategoryModel> _categories = [
    CategoryModel('Noodles',imageUrl: 'https://images.unsplash.com/photo-1612392062126-5cc76074df9c?ixid=MnwxMjA3fDF8MHxzZWFyY2h8NDh8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    CategoryModel('Rice',imageUrl: 'https://images.unsplash.com/photo-1512058564366-18510be2db19?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80'),
    CategoryModel('Beef',imageUrl: 'https://images.unsplash.com/photo-1595708684082-a173bb3a06c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=745&q=80'),
    CategoryModel('Cake',imageUrl: 'https://images.unsplash.com/photo-1464349095431-e9a21285b5f3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=549&q=80'),
    CategoryModel('Chicken',imageUrl: 'https://images.unsplash.com/photo-1598103442097-8b74394b95c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
  ];
  void addCategory(CategoryModel newCategory){
    _categories.add(newCategory);
    notifyListeners();
  }
List<CategoryModel> get categories =>_categories;
}