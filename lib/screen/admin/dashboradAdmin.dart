import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:request_app/model/drobdown.dart';

void main() {
  runApp(const dashboardAdmin());
}

class dashboardAdmin extends StatelessWidget {
  const dashboardAdmin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Drobdown(),
      debugShowCheckedModeBanner: false,
    );
  }
}

