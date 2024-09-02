import 'dart:math';
import 'package:app/network/firebase_service.dart';

class OtpController {
  final FirebaseService _firebaseService = FirebaseService();

  String generateOtp() {
    final random = Random();
    return (1000 + random.nextInt(9000)).toString(); // Generates a 4-digit OTP
  }

  void sendOtpMessage(String userPhoneNumber, String otp) {
    // Implement the logic to send the OTP via WhatsApp or any other service
  }

  Future<void> saveUserDetails(String userPhoneNumber, String userPassword) async {
    await _firebaseService.saveUserDetails(userPhoneNumber, userPassword);
  }

  bool verifyOtp(String inputOtp, String sentOtp) {
    return inputOtp == sentOtp;
  }
}
