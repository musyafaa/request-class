import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:request_app/api/prefence_handler.dart';

class ControllerRiwayat extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<DocumentSnapshot<Map<String, dynamic>>> getRiwayat() async {
    var classId = await Preference.getUser();

    {
      // get seluruh presensi sampai saat ini
      return await firestore.collection("pesanan").doc(classId).get();
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getRiwayatPemesanan() async* {
    var classId = await Preference.getUser();

    yield* firestore.collection("pesanan").doc(classId).collection("totalpesanan").snapshots();
  }

}
