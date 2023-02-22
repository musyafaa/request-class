import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:request_app/components/constant/constant.dart';
import 'package:request_app/screen/admin/detailAdmin.dart';

class AdminAcc extends StatelessWidget {
  const AdminAcc({super.key});

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
        ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            physics: const BouncingScrollPhysics(),
            itemBuilder: ((context, index) {
              return GestureDetector(
                  onTap: () {
                    Get.to(() => const DetailAdmin());
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
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset('assets/images/person.png')),
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // const SizedBox(
                                    //   width: 5,
                                    // ),
                                    Column(
                                      children: const [
                                        Text(
                                          'Nama',
                                          style:
                                              TextStyle(color: kPrimaryColor),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'Haris',
                                          style: TextStyle(
                                              color: blackColor,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),

                                    Column(
                                      children: const [
                                        Text(
                                          'Jurusan',
                                          style:
                                              TextStyle(color: kPrimaryColor),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'RPL',
                                          style: TextStyle(
                                              color: blackColor,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  ' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  ',
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: const [
                                        Text(
                                          'Kelas',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  196, 196, 196, 1)),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'RPL5',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(32, 32, 32, 1),
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          'Tanggal Pengajuan',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  196, 196, 196, 1)),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '08 September 2022',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(32, 32, 32, 1),
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ));
            }))
      ]),
    );
  }
}
