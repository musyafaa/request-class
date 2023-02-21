import 'package:flutter/material.dart';

// ignore: camel_case_types
class Detail extends StatelessWidget {
  const Detail({super.key});

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
        body: detailWidget());
  }

  Widget detailWidget() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  const Text(
                    'Detail Pemesanan Kelas',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Column()
                ],
              )),
        ),
      ],
    );
  }
}
