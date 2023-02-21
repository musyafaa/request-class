import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:request_app/components/constant/constant.dart';
import 'package:request_app/screen/admin/adminAcc.dart';

// ignore: camel_case_types
class dashboardUser extends StatelessWidget {
  const dashboardUser({super.key});

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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                  width: 370,
                  height: 150,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: kPrimaryColor,
                        width: 1, //                   <--- border width here
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'No. Pemesanan: A001',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                        children: const [
                          Text('Tanggal Pemesanan: '),
                          Text(
                            '20/10/2022',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Text('Pemesan: '),
                          Text(
                            'Haris',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Text('Kelas: '),
                          Text(
                            'XII RPl 5',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text('Jam:'),
                              Text('13.00 - 16.00',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
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
                                'Submit',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color.fromRGBO(51, 122, 183, 1),
                                  fontWeight: FontWeight.w600,
                                  background: Paint()
                                    ..strokeWidth = 18
                                    ..color =
                                        const Color.fromRGBO(51, 122, 183, 0.1)
                                    ..strokeJoin = StrokeJoin.round
                                    ..strokeCap = StrokeCap.round
                                    ..style = PaintingStyle.stroke,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ));
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AdminAcc());
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
