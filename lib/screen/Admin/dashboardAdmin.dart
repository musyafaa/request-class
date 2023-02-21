// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new


import 'package:flutter/material.dart';


// ignore: camel_case_types
class dashboardAdmin extends StatelessWidget{
  const dashboardAdmin({super.key});

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Dalam Proses"),value: "Dalam Proses"),
      DropdownMenuItem(child: Text("Disetujui"),value: "Disetujui"),
      DropdownMenuItem(child: Text("Ditolak"),value: "Ditolak"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title:Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Image.asset('./assets/images/logo-telkom.png',
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left:18),
                child : Text("Request Penggunaan Kelas",
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
            ]
        )
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Column(
                children: <Widget>[
                   DropdownButton(
                       items: dropdownItems,
                       onChanged: null
                   )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}