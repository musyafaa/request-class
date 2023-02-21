// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new

import 'package:request_app/dashboardUser.dart';
import 'package:request_app/Alert.dart';
import 'package:request_app/snackBar.dart';
import 'package:request_app/screen/Admin/dashboardAdmin.dart';
import 'package:request_app/screen/Admin/dashboardAdmin.dart';
import 'package:request_app/splashScreen.dart';
import 'package:flutter/material.dart';
import 'HalamanKetiga.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( title: 'class in flutter',
    theme: ThemeData(
      primarySwatch: Colors.red,

      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
      home: SplashScreen(), debugShowCheckedModeBanner: false,
    );
  }
}

class HalamanHome extends StatelessWidget{
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
          title: const Text("class in flutter") ,
          backgroundColor: Colors.red,
        ),
    body: new Center(
      child: Column(
        children: <Widget>[

          Padding(
            padding:  EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
              Text('Nama Lengkap: Muhammad Musyafa Fadila'),
              Text('Kelas: XII RPL 5'),
              Text('No Absen: 6'),
              ],
            ),
          ),

          new MaterialButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama() ));
            },child: Text('Halaman ListView'),
            color: Colors.red,
            textColor: Colors.black,
            height: 35,
            minWidth: 300,
            ),

            new MaterialButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua() ));
            },child: Text('Halaman login'),
            color: Colors.blue,
            textColor: Colors.black,
            height: 35,
            minWidth: 300,
            ),

            new MaterialButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga() ));
            },child: Text('Halaman Grid'),
            color: Colors.green,
            textColor: Colors.black,
            height: 35,
            minWidth: 300,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/pic1.JPG',
              height: 200,
              width: 100,),
              Image.asset('assets/images/pic2.JPG',
              height: 140,
              width: 100,),
              Image.asset('assets/images/pic3.JPG',
              height: 200,
              width: 100,),

            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.share,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.route,
                  color: Colors.blue,
                ),
              ],
            ),
        ],
      ),
    ),
   );
  }
}

class HalamanPertama extends StatelessWidget{
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        backgroundColor: Colors.red,
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: Text('1. Muhammad Bintang'),
          ),
          new ListTile(
            title: Text('2. Muhammad Fakhry Huzan'),
          ),
          new ListTile(
            title: Text('3. Muhammad Faris Hilmy'),
          ),
          new ListTile(
            title: Text('4. Muhammad Fauzil Adim'),
          ),
          new ListTile(
            title: Text('5. Muhammad haris Al-Fikri'),
          ),
          new ListTile(
            title: Text('6. Muhammad Musyafa Fadila'),
          ),
          new ListTile(
            title: Text('7. Muhammad Rifki Fadhilah'),
          ),
          new ListTile(
            title: Text('8. Muhammad Rizky Sendiko'),
          ),
          new ListTile(
            title: Text('9. Muhammad Rizqi Gunan'),
          ),
          new ListTile(
            title: Text('10. Muhammad Rusdiyanto'),
          ),
          new ListTile(
            title: Text('11. Mutia Rani Zahra Meilani <3'),
          ),
        ],
      ),

    );
  }
}

class HalamanKedua extends StatelessWidget{

  final TextEditingController myController = TextEditingController();

  HalamanKedua({super.key});

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
      body: new Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 64),
              child: Column(
                children: <Widget>[
                Text('Request Class',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28 ),),
                Center(),
                ],
              ),
            ),

            // image logo telkom kepsek wiwid
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/logo-telkom.png',
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
                          border: OutlineInputBorder(

                          ),
                          hintText: "Kelas",
                          labelText: "Kelas",
                          prefixIcon: Icon(Icons.people)
                        ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),

                  child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(

                        ),
                        hintText: "Password",
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),


                      ),

                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 100),

                  child: new MaterialButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => dashboardAdmin() ));
                    },child: Text('Masuk',
                      style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20 ),),
                    color: Colors.red,
                    textColor: Colors.white,
                    height: 50,
                    minWidth: 300,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                ),

              ],
            ),
           // akhir form untuk login
          ],
        )
      ),
    );
  }
}
