import 'package:flutter/material.dart';
import 'package:request_app/model/drobdown.dart';

void main() {
  runApp(const DashboardAdmin());
}

class DashboardAdmin extends StatelessWidget {
  const DashboardAdmin({Key? key}) : super(key: key);
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
