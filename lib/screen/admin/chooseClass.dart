import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:request_app/screen/user/riwayat_Controller.dart';

class ChooseClass extends StatefulWidget {
  const ChooseClass({super.key});

  @override
  State<ChooseClass> createState() => _ChooseClassState();
}

class _ChooseClassState extends State<ChooseClass> {
  CollectionReference pesanan =
      FirebaseFirestore.instance.collection('pesanan');

  final controller = Get.put(ControllerRiwayat());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    './assets/images/logo-telkom.png',
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 18),
                    child: const Text(
                      "Request Penggunaan Kelas",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ])),
        body: FutureBuilder<QuerySnapshot>(
            future: pesanan.get(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snap.data!.docs.isEmpty) {
                return SizedBox(
                  height: Get.height / 1.5,
                  child: const Center(
                    child: Text("Belum ada data pesanan dari user."),
                  ),
                );
              }
              return ListView.builder(
                  itemCount: snap.data!.docs.length,
                  itemBuilder: (context, index) {
                    var data = snap.data!.docs[index];
                    return Padding(
                        padding: const EdgeInsets.fromLTRB(100, 40, 100, 0),
                        child: ElevatedButton(
                          onPressed: () async {
                            // Get.to(const dashboardUser());
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ))),
                          child: Text(
                            data['name'],
                            style: const TextStyle(fontSize: 18),
                          ),
                        ));
                  });
            }));
  }
}
