import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Map? currentUser;

  FirebaseService();

  Future<String?> registerUser({
    required String name,
    required String email,
    required String username,
    required String mobileNumber,
    required String otp,
    required String password,
  }) async {
    try {
      // Step 1: Create the user account using email and password
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Step 2: Save additional user details in Firestore
      String userId = userCredential.user!.uid;
      await _firestore.collection('users').doc(userId).set({
        'name': name,
        'email': email,
        'username': username,
        'mobileNumber': mobileNumber,
      });

      // Step 3: Perform any other necessary actions (e.g., sending verification email)

      return null; // Registration success, no error message
    } catch (e) {
      return e.toString(); // Return error message if registration fails
    }
  }
}
