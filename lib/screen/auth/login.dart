import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:request_app/components/screen/passsword.dart';
import 'package:request_app/screen/user/dashboardUser.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController myController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: (
      //     Text('Belajar Login')
      //   ),
      //     backgroundColor: Colors.red,
      // ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 64),
            child: Column(
              children: const <Widget>[
                Text(
                  'Request Class',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                Center(),
              ],
            ),
          ),

          // image logo telkom kepsek wiwid
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/logo-telkom.png',
                height: 200,
              ),
            ],
          ),
          // image logo telkom kepsek wiwid

          // awal form untuk login
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Kelas",
                      labelText: "Kelas",
                      prefixIcon: Icon(Icons.people)),
                ),
              ),
              const InputPassword(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                child: MaterialButton(
                  onPressed: () {
                    Get.to(const dashboardUser());
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  height: 50,
                  minWidth: 300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Masuk',
                    style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          // akhir form untuk login
        ],
      )),
    );
  }
}
