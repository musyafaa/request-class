import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ControllerLogin extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Stream<DocumentSnapshot<Map<String, dynamic>>> streamLoginUser(
      username) async* {
    yield* firestore.collection("user").doc(username).snapshots();
  }
}
