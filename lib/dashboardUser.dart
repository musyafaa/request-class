// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new


import 'package:flutter/material.dart';


// ignore: camel_case_types
class dashboardUser extends StatelessWidget{
  const dashboardUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Request Penggunaan Kelas",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,            
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Column(
                children: <Widget>[
                Text('Request Class',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28 ), textAlign: TextAlign.start,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}