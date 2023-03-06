import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ControllerAdmin extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Stream<QuerySnapshot<Map<String, dynamic>>> getRiwayatAllPemesanan() async* {
    yield* firestore.collection("pesanan").snapshots();
    print(firestore);
  }
}
