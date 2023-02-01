// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new

import 'package:request_app/dashboardUser.dart';
import 'package:request_app/screen/admin/dashboradAdmin.dart';
import 'package:request_app/splashScreen.dart';
import 'package:flutter/material.dart';


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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dashboardUser() ));
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
