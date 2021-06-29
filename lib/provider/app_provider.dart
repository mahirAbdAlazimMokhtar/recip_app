import 'package:flutter/foundation.dart';
class AppProvider extends ChangeNotifier {
  final List<String> _categories = [
    'Noodles',
    'Rice',
    'Chicken',
    'Beef'
    'Cake'
  ];
  void addCategory(String newCategory){
    _categories.add(newCategory);
    notifyListeners();
  }
List<String> get categories =>_categories;
}