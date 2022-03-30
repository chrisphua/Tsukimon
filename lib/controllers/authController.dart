import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:tsukimon/controllers/userController.dart';
import 'package:tsukimon/models/user.dart';
import 'package:tsukimon/services/database.dart';
import 'package:tsukimon/widgets/bottomnav.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Rxn<User> _firebaseUser = Rxn<User>();

  User? get user => _firebaseUser.value;

  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.userChanges());
    super.onInit();
  }

  void createUser(
      String email,
      String password,
      String fname,
      String lname,
      String country,
      DateTime dob,
      String address,
      String city,
      String state,
      String zip,
      String phoneNumber,
      ) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email.trim(), password: password);

      UserModel _user = UserModel(
        id:  userCredential.user!.uid,
        email: userCredential.user!.email!,
        fname: fname,
        lname: lname,
        country: country,
        dob: dob,
        address: address,
        city: city,
        state: state,
        zip: zip,
        phoneNumber: phoneNumber,
        image_url: "",
      );
      if (await DataBase().createNewUser(_user)) {
        Get.find<UserController>().user = _user;
        Get.offAll(() => const BottomNavScreen());
      }
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error creating account",
        e.message.toString(),
        snackPosition: SnackPosition.bottom,
      );
    }
  }

  void login(String email, String password) async {
    try {
      UserCredential _authResult = await _auth.signInWithEmailAndPassword(email: email.trim(), password: password);
      Get.find<UserController>().user = await DataBase().getUser(_authResult.user!.uid);
      Get.offAll(() => const BottomNavScreen());
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error signing in",
        e.message.toString(),
        snackPosition: SnackPosition.bottom,
      );
    }
  }

  void resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email.trim());
      Get.snackbar('Success',
          'check your email and follow the intruction to reset your password',
          duration: const Duration(seconds: 10));
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.message.toString(),
          snackPosition: SnackPosition.bottom);
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
      Get.find<UserController>().clear();
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error signing out",
        e.message.toString(),
        snackPosition: SnackPosition.bottom,
      );
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    Get.offAll(() => const BottomNavScreen());
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    Get.offAll(() => const BottomNavScreen());
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
