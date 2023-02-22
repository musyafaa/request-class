import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            ]));
  }
}
