import 'package:flutter/material.dart';

class Drobdown extends StatefulWidget {
  const Drobdown({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Drobdown> {
// Initial Selected Value
  String dropdownvalue = 'Item 1';

// List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
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
                  margin: const EdgeInsets.only(left: 18),
                  child: const Text(
                    "Request Penggunaan Kelas",
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                ),
              ])),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 140,
                    height: 30,
                    // padding: EdgeInsets.all(16.0),
                    margin: const EdgeInsets.only(top: 20, right: 200),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFF000000),
                          width: 0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: DropdownButton(
                      style: Theme.of(context).textTheme.bodyMedium,
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(null),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items,
                            child: Container(
                                padding: const EdgeInsets.only(left: 48),
                                child: Text(
                                  items,
                                  textAlign: TextAlign.center,
                                )));
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
