// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                      margin: EdgeInsets.only(left: 18),
                      child: Text(
                        "Request Penggunaan Kelas",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ])),
          body: detailWidget()
        ));
  }

  Widget detailWidget() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Text('Detail Pemesanan Kelas', textAlign: TextAlign.center , style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 24
                ),),
                Column(

                )
              ],
            )
          ),
        ),
      ],
    );
  }
}

