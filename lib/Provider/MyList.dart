import 'package:flutter/cupertino.dart';

class MyList with ChangeNotifier{
  List<String> _fruits = ["apple", "banana","mango" ];
  List<String> get fruits => _fruits;


  void addFruits(String fruits){
    _fruits.add(fruits);
    notifyListeners();
  }
  void removeFruits(String fruits){
    _fruits.remove(fruits);
    notifyListeners();
  }

}