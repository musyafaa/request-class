import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:request_app/api/prefence_handler.dart';
import 'package:request_app/screen/auth/controllerLogin.dart';
import 'package:request_app/screen/user/dashboardUser.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controller = Get.put(ControllerLogin());

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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextField(
                  controller: usernameController,
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Kelas",
                      labelText: "Kelas",
                      prefixIcon: Icon(Icons.people)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextField(
                  controller: passwordController,
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                child: MaterialButton(
                  onPressed: () async {
                    if (usernameController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      if (usernameController.text == "XII RPL 4" &&
                          passwordController.text == "1sampai8") {
                        Preference.storingUser(usernameController.text).then(
                            (value) => Get.to(() => const dashboardUser()));
                      } else if (usernameController.text == "XII RPL 5" &&
                          passwordController.text == "1sampai5") {
                        Preference.storingUser(usernameController.text).then(
                            (value) => Get.to(() => const dashboardUser()));
                      } else if (usernameController.text == "XII RPL 6" &&
                          passwordController.text == "1sampai6") {
                        Preference.storingUser(usernameController.text).then(
                            (value) => Get.to(() => const dashboardUser()));
                      } else {
                        Get.snackbar("username", "username tidak terdaftar",
                            snackStyle: SnackStyle.FLOATING);
                      }
                    } else {
                      Get.snackbar("username",
                          "username atau password tidak boleh kosong");
                    }
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
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              //   child: MaterialButton(
              //     onPressed: () {
              //       Get.to(() => const DashboardAdmin());
              //     },
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     height: 50,
              //     minWidth: 300,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //     child: const Text(
              //       'Admin',
              //       style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      )),
    );
  }
}
