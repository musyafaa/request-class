import 'package:flutter/material.dart';
import 'package:request_app/components/constant/constant.dart';

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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              physics: const BouncingScrollPhysics(),
              itemBuilder: ((context, index) {
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
                          children: [
                            Image.asset('assets/images/person.png'),
                            Column(
                              children: [
                                Row(
                                  children: [
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
                                const Text(
                                  '    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(196, 196, 196, 1)),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
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
                                    const SizedBox(
                                      width: 60,
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
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ));
              }))
        ],
      ),
    );
  }
}
