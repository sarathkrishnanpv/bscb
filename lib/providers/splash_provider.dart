import 'package:flutter/material.dart';

class SplashScreenProvider with ChangeNotifier {
  bool _isVisible = false;

  bool get isVisible => _isVisible;

  void showSplash() {
    _isVisible = true;
    notifyListeners();
  }

  void hideSplash() {
    _isVisible = false;
    notifyListeners();
  }
//this test
    void resetSplash() {
    _isVisible = true;
    notifyListeners();
  }
}
