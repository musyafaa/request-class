import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:request_app/components/constant/constant.dart';
import 'package:request_app/screen/user/addPesanan.dart';
import 'package:request_app/screen/user/detail.dart';
import 'package:request_app/screen/user/riwayat_Controller.dart';

// ignore: camel_case_types
class dashboardUser extends StatefulWidget {
  const dashboardUser({super.key});

  @override
  State<dashboardUser> createState() => _dashboardUserState();
}

class _dashboardUserState extends State<dashboardUser> {
  CollectionReference pesanan =
      FirebaseFirestore.instance.collection('pesanan');

  final controller = Get.put(ControllerRiwayat());

  String dropdownvalue = 'Semua Riwayat';

  var items = [
    'Submit',
    'Diterima',
    'Ditolak',
    'Selesai',
    'Semua Riwayat',
  ];

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
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 30,
            // padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF000000),
                  width: 0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(50),
            ),
            child: DropdownButton(
              style: Theme.of(context).textTheme.bodyMedium,
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(null),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                    value: items,
                    child: Container(
                        padding: const EdgeInsets.only(left: 48),
                        child: Text(
                          items,
                          textAlign: TextAlign.center,
                        )));
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
        ),

        // untuk get data pemesanan
        StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: controller.getRiwayatPemesanan(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snap.data == null) {
                return const SizedBox(
                  height: 150,
                  child: Center(
                    child: Text("Belum ada history presensi."),
                  ),
                );
              }

              return ListView.builder(
                shrinkWrap: true,
                itemCount: snap.data?.docs.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  Map<String, dynamic> data = snap.data!.docs[index].data();
                  return GestureDetector(
                      onTap: () {
                        Get.to(() => DetailUser(
                              no: data['NomorId'],
                              date: data['date'],
                              pemesan: data['name'],
                              kelaspemesan: data['pemesan'],
                            ));
                      },
                      child: Container(
                          width: 370,
                          height: 150,
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: kPrimaryColor,
                                width: 1,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(3, 3),
                                  blurRadius: 1,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'No. Pemesanan: ${data['NomorId']}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // SizedBox(width: 150),
                                  // ignore: avoid_unnecessary_containers
                                  Container(
                                    child: Text(
                                      'Detail',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        background: Paint()
                                          ..strokeWidth = 18
                                          ..color = Colors.red
                                          ..strokeJoin = StrokeJoin.round
                                          ..strokeCap = StrokeCap.round
                                          ..style = PaintingStyle.stroke,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text('Tanggal Pemesanan: '),
                                  Text(
                                    data['date'],
                                    // '20/10/2022',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Text('Pemesan: '),
                                  Text(
                                    data['name'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Text('Kelas: '),
                                  Text(
                                    data['pemesan'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Text('Jam:'),
                                      Text(
                                          "${data['mulai']} - ${data['selesai']}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'status:',
                                        style: TextStyle(color: kPrimaryColor),
                                      ),
                                      const SizedBox(
                                        width: 14,
                                      ),
                                      Text(
                                        data['status'],
                                        style: data['status'] == 'Submit'
                                            ? styleStatus(
                                                colortext: const Color.fromRGBO(
                                                    51, 122, 183, 1),
                                                colorbg: const Color.fromRGBO(
                                                    51, 122, 183, 0.1))
                                            : data['status'] == 'Ditolak'
                                                ? styleStatus(
                                                    colortext:
                                                        const Color.fromRGBO(
                                                            183, 51, 51, 1),
                                                    colorbg: const Color.fromRGBO(
                                                        234, 35, 42, 0.5))
                                                : data['status'] == 'Selesai'
                                                    ? styleStatus(
                                                        colortext:
                                                            const Color.fromRGBO(
                                                                39, 129, 32, 1),
                                                        colorbg: const Color.fromRGBO(
                                                            101, 219, 91, 0.5))
                                                    : styleStatus(
                                                        colortext:
                                                            const Color.fromRGBO(51, 122, 183, 1),
                                                        colorbg: const Color.fromRGBO(51, 122, 183, 0.1)),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )));
                },
              );
            })
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddPesanan());
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  TextStyle styleStatus({colorbg, colortext}) {
    return TextStyle(
      fontSize: 12,
      color: colortext,
      fontWeight: FontWeight.w600,
      background: Paint()
        ..strokeWidth = 18
        ..color = colorbg
        ..strokeJoin = StrokeJoin.round
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );
  }
}
