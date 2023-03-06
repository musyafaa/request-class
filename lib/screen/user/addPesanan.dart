import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:request_app/api/prefence_handler.dart';
import 'package:uuid/uuid.dart';

class AddPesanan extends StatefulWidget {
  const AddPesanan({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddPesanan();
  }
}

class _AddPesanan extends State<AddPesanan> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  String uuid = const Uuid().v4().replaceRange(5, null, '');

  final TextEditingController dateController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();
  final TextEditingController mulaiController = TextEditingController();
  final TextEditingController selesaiController = TextEditingController();
  final TextEditingController dipesanController = TextEditingController();
  final TextEditingController jurusanController = TextEditingController();

  @override
  void initState() {
    dateController.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: Text(
                "Silahkan isi data dibawah untuk melakukan pesanan kelas",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: TextField(
                  controller: dateController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Tanggal",
                    labelText: "Tanggal Pemesanan",
                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                      print(
                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        dateController.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {}
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                controller: nameController,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Nama ",
                  labelText: "Nama Pemesan",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                controller: kelasController,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Kelas",
                  labelText: "Kelas Pemesan",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                controller: mulaiController,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Jam",
                  labelText: "Jam Mulai",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                controller: selesaiController,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Jam",
                  labelText: "Jam Selesai",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                controller: dipesanController,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Kelas",
                  labelText: "Kelas Dipesan",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                controller: jurusanController,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Jurusan",
                  labelText: "Jurusan Siswa",
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(100, 40, 100, 0),
                child: ElevatedButton(
                  onPressed: () async {
                    // Get.to(const dashboardUser());

                    var classId = await Preference.getUser();
                    print(classId);
                    await firestore
                        .collection("pesanan")
                        .doc(classId)
                        .collection("totalpesanan")
                        .doc('A00$uuid')
                        .set({
                      "NomorId": 'A00$uuid',
                      "date": dateController.text,
                      "name": nameController.text,
                      "pemesan": kelasController.text,
                      "mulai": mulaiController.text,
                      "selesai": selesaiController.text,
                      "dipesan": dipesanController.text,
                      "jurusan": jurusanController.text,
                      "status": "Submit",
                      "createdAt": DateTime.now().toIso8601String(),
                    }).then((value) => Get.back());
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ))),
                  child: const Text(
                    'Pesan',
                    style: TextStyle(fontSize: 18),
                  ),
                ))
          ],
        ));
  }
}

// class AddPesanan extends StatelessWidget {

//   AddPesanan({super.key});

// }
