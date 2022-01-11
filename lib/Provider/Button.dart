import 'package:flutter/cupertino.dart';

class MyButton with ChangeNotifier{
  bool _isPressed = false;
  bool get  isPressed => _isPressed;

  void changeColor (){
    _isPressed= !_isPressed;
    notifyListeners();
  }
}