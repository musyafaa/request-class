// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new

import 'package:flutter/material.dart';

class dashboardAdmin extends StatelessWidget {
  const dashboardAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const dashboardAdmin(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class dashboardPage extends StatefulWidget {
  const dashboardPage({Key? key}) : super(key: key);

  @override
  _dashboardPageState createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  String valueDropdown = 'item1';

  List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(value: "Item1", child: Text("Item1")),
    DropdownMenuItem(value: "Item2", child: Text("Item2")),
    DropdownMenuItem(value: "Item3", child: Text("Item3")),
    DropdownMenuItem(value: "Item4", child: Text("Item4")),
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
                  margin: EdgeInsets.only(left: 18),
                  child: Text(
                    "Request Penggunaan Kelas",
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                ),
              ])),
      body: new Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Column(
                children: <Widget>[
                  DropdownButton(
                    value: valueDropdown,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items,
                    onChanged: (String? newValue) {
                      setState(() {
                        valueDropdown = newValue!;
                      });
                    },
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
