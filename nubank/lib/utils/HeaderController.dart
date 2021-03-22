import 'package:flutter/material.dart';

class HeaderController extends ChangeNotifier{

  bool isVisible = true;
  bool isScreenConfig = false;

  void changeVisible(){
    isVisible = !isVisible;
    notifyListeners();
  }

  void changeScreenConfig(){
    isScreenConfig = !isScreenConfig;
    notifyListeners();
  }

}