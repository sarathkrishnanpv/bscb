import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveUserDetails(String phoneNumber, String password) async {
    await _firestore.collection('users').add({
      'phone_number': phoneNumber,
      'password': password, 
      'created_at': FieldValue.serverTimestamp(),
    });
  }
}
