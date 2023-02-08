// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new

import 'package:flutter/material.dart';

// ignore: camel_case_types
class dashboardUser extends StatelessWidget {
  const dashboardUser({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Request Penggunaan  Kelas', style: TextStyle(color: Colors.black)), backgroundColor: Colors.white,),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 20),
          Container(
              width: 370,
              height: 150,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    width: 1, //                   <--- border width here
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3, 3),
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'No. Pemesanan: A001',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 150),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Text(
                          'Detail',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            background: Paint()
                              ..strokeWidth = 18
                              ..color = Colors.red
                              ..strokeJoin = StrokeJoin.round
                              ..strokeCap = StrokeCap.round
                              ..style = PaintingStyle.stroke,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Tanggal Pemesanan: '),
                      Text(
                        '20/10/2022',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Pemesan: '),
                      Text(
                        'Haris',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Kelas: '),
                      Text(
                        'XII RPl 5',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Jam:'),
                      Text('13.00 - 16.00',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 110),
                      Text(
                        'status:',
                        style:
                            TextStyle(color: Color.fromRGBO(167, 167, 167, 1)),
                      ),
                      SizedBox(width: 14),
                      Container(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(51, 122, 183, 1),
                            fontWeight: FontWeight.w600,
                            background: Paint()
                              ..strokeWidth = 18
                              ..color = Color.fromRGBO(51, 122, 183, 0.1)
                              ..strokeJoin = StrokeJoin.round
                              ..strokeCap = StrokeCap.round
                              ..style = PaintingStyle.stroke,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
          Container(
              width: 370,
              height: 150,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    width: 1, //                   <--- border width here
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3, 3),
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'No. Pemesanan: A001',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 150),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Text(
                          'Detail',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            background: Paint()
                              ..strokeWidth = 18
                              ..color = Colors.red
                              ..strokeJoin = StrokeJoin.round
                              ..strokeCap = StrokeCap.round
                              ..style = PaintingStyle.stroke,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Tanggal Pemesanan: '),
                      Text(
                        '20/10/2022',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Pemesan: '),
                      Text(
                        'Haris',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Kelas: '),
                      Text(
                        'XII RPl 5',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Jam:'),
                      Text('13.00 - 16.00',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 110),
                      Text(
                        'status:',
                        style:
                            TextStyle(color: Color.fromRGBO(167, 167, 167, 1)),
                      ),
                      SizedBox(width: 14),
                      Container(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(51, 122, 183, 1),
                            fontWeight: FontWeight.w600,
                            background: Paint()
                              ..strokeWidth = 18
                              ..color = Color.fromRGBO(51, 122, 183, 0.1)
                              ..strokeJoin = StrokeJoin.round
                              ..strokeCap = StrokeCap.round
                              ..style = PaintingStyle.stroke,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
          Container(
              width: 370,
              height: 150,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    width: 1, //                   <--- border width here
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3, 3),
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'No. Pemesanan: A001',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 150),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Text(
                          'Detail',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            background: Paint()
                              ..strokeWidth = 18
                              ..color = Colors.red
                              ..strokeJoin = StrokeJoin.round
                              ..strokeCap = StrokeCap.round
                              ..style = PaintingStyle.stroke,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Tanggal Pemesanan: '),
                      Text(
                        '20/10/2022',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Pemesan: '),
                      Text(
                        'Haris',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Kelas: '),
                      Text(
                        'XII RPl 5',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Jam:'),
                      Text('13.00 - 16.00',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 110),
                      Text(
                        'status:',
                        style:
                            TextStyle(color: Color.fromRGBO(167, 167, 167, 1)),
                      ),
                      SizedBox(width: 14),
                      Container(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(51, 122, 183, 1),
                            fontWeight: FontWeight.w600,
                            background: Paint()
                              ..strokeWidth = 18
                              ..color = Color.fromRGBO(51, 122, 183, 0.1)
                              ..strokeJoin = StrokeJoin.round
                              ..strokeCap = StrokeCap.round
                              ..style = PaintingStyle.stroke,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
          Container(
              width: 370,
              height: 150,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    width: 1, //                   <--- border width here
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3, 3),
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'No. Pemesanan: A001',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 150),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Text(
                          'Detail',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            background: Paint()
                              ..strokeWidth = 18
                              ..color = Colors.red
                              ..strokeJoin = StrokeJoin.round
                              ..strokeCap = StrokeCap.round
                              ..style = PaintingStyle.stroke,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Tanggal Pemesanan: '),
                      Text(
                        '20/10/2022',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Pemesan: '),
                      Text(
                        'Haris',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Kelas: '),
                      Text(
                        'XII RPl 5',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Jam:'),
                      Text('13.00 - 16.00',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 110),
                      Text(
                        'status:',
                        style:
                            TextStyle(color: Color.fromRGBO(167, 167, 167, 1)),
                      ),
                      SizedBox(width: 14),
                      Container(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(51, 122, 183, 1),
                            fontWeight: FontWeight.w600,
                            background: Paint()
                              ..strokeWidth = 18
                              ..color = Color.fromRGBO(51, 122, 183, 0.1)
                              ..strokeJoin = StrokeJoin.round
                              ..strokeCap = StrokeCap.round
                              ..style = PaintingStyle.stroke,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.red,
          ),
    ));
  }
}
