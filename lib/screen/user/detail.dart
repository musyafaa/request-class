import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailUser extends StatelessWidget {
  const DetailUser(
      {super.key,
      required this.date,
      required this.no,
      required this.pemesan,
      required this.kelaspemesan,
      required this.jurusan,
      required this.mulai,
      required this.selesai});

  final String no;
  final String date;
  final String pemesan;
  final String kelaspemesan;
  final String jurusan;
  final String mulai;
  final String selesai;

  void deletedata(id) async {
    await FirebaseFirestore.instance
        .collection("pesanan")
        .doc(kelaspemesan)
        .collection("totalpesanan")
        .doc(id)
        .delete()
        .then((value) => Get.back());
  }

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
                    "Detail Request",
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                ),
              ])),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            './assets/images/progress.png',
            height: 40,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Status peminjaman:",
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "Menunggu disetujui",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 16, right: 16),
            child: Container(
              height: 1,
              color: const Color.fromRGBO(196, 196, 196, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text("Detail peminjaman:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "No. Pesanan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(":     $no", style: const TextStyle(fontSize: 18))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Tanggal Peminjaman",
                  style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1), fontSize: 18),
                ),
                Text(":   $date", style: const TextStyle(fontSize: 18))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Nama Pemesan",
                  style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1), fontSize: 18),
                ),
                Text(":               $pemesan",
                    style: const TextStyle(fontSize: 18))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Kelas",
                  style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1), fontSize: 18),
                ),
                Text(":        $kelaspemesan",
                    style: const TextStyle(fontSize: 18))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Jurusan",
                  style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1), fontSize: 18),
                ),
                Text(":                 $jurusan",
                    style: const TextStyle(fontSize: 18))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Waktu Mulai",
                  style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1), fontSize: 18),
                ),
                Text(":             $mulai",
                    style: const TextStyle(fontSize: 18))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Waktu Selesai",
                  style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1), fontSize: 18),
                ),
                Text(":             $selesai",
                    style: const TextStyle(fontSize: 18))
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(100, 40, 100, 0),
              child: ElevatedButton(
                onPressed: () {
                  deletedata(no);
                  print(no);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ))),
                child: const Text(
                  'Batalkan',
                  style: TextStyle(fontSize: 18),
                ),
              ))
        ],
      ),
    );
  }
}
