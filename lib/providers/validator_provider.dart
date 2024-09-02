import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupFormProvider extends ChangeNotifier {
  String? _phoneNumber;
  String? _password;
  String? _confirmPassword;

  String? get phoneNumber => _phoneNumber;
  String? get password => _password;
  String? get confirmPassword => _confirmPassword;

  bool validateForm(String phoneNumber, String password, String confirmPassword) {
    if (phoneNumber.isEmpty) {
      Fluttertoast.showToast(
        msg: "Please enter a valid phone number",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
    if (password.length < 6) {
      Fluttertoast.showToast(
        msg: "Password must be at least 6 characters",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
    if (confirmPassword != password) {
      Fluttertoast.showToast(
        msg: "Passwords do not match",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
    // Update provider values if needed
    _phoneNumber = phoneNumber;
    _password = password;
    _confirmPassword = confirmPassword;
    notifyListeners();
    return true;
  }
}
