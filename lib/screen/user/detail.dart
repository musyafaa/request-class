import 'package:flutter/material.dart';

class DetailUser extends StatelessWidget {
  const DetailUser(
      {super.key,
      required this.date,
      required this.no,
      required this.pemesan,
      required this.kelaspemesan});

  final String no;
  final String date;
  final String pemesan;
  final String kelaspemesan;
  // final String date;
  // final String date;
  // final String date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            no,
            style: const TextStyle(color: Colors.black, fontSize: 24),
          ),
          Text(
            date,
            style: const TextStyle(color: Colors.black, fontSize: 24),
          ),
          Text(
            pemesan,
            style: const TextStyle(color: Colors.black, fontSize: 24),
          ),
          Text(
            kelaspemesan,
            style: const TextStyle(color: Colors.black, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
