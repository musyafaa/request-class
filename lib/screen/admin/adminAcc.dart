// ignore: file_names// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AdminAcc extends StatelessWidget {
  const AdminAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(        
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                  width: 370,
                  height: 150,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromRGBO(167, 167, 167, 1),
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
                          Image.asset('assets/images/person.png'),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text('Nama', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('Haris', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  SizedBox(width: 110,),
                                  Column(
                                    children: const [
                                      Text('Jurusan', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('RPL', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                                                
                                ],
                              ),
                              
                              Text('    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ',
                              style: TextStyle(
                                color: Color.fromRGBO(196, 196, 196, 1)
                              ),
                              ),
                              SizedBox(height: 12,),
                              Row(                        
                                children: [                                  
                              SizedBox(width: 20,),
                              
                                  Column(
                                    children: const [
                                      Text('Kelas', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('RPL5', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  SizedBox(width: 60,),
                                  Column(                                    
                                    children: const [                                      
                                      Text('Tanggal Pengajuan', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('08 September 2022', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                ],
                              )
                            ],    
                          ),                         
                          
                        ],                        
                      ),
                      
                      
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
                        color: const Color.fromRGBO(167, 167, 167, 1),
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
                          Image.asset('assets/images/person.png'),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text('Nama', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('Haris', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  SizedBox(width: 110,),
                                  Column(
                                    children: const [
                                      Text('Jurusan', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('RPL', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                                                
                                ],
                              ),
                              
                              Text('    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ',
                              style: TextStyle(
                                color: Color.fromRGBO(196, 196, 196, 1)
                              ),
                              ),
                              SizedBox(height: 12,),
                              Row(                        
                                children: [                                  
                              SizedBox(width: 20,),
                              
                                  Column(
                                    children: const [
                                      Text('Kelas', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('RPL5', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  SizedBox(width: 60,),
                                  Column(                                    
                                    children: const [                                      
                                      Text('Tanggal Pengajuan', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('08 September 2022', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                ],
                              )
                            ],    
                          ),                         
                          
                        ],                        
                      ),
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
                        color: const Color.fromRGBO(167, 167, 167, 1),
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
                          Image.asset('assets/images/person.png'),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text('Nama', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('Haris', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  SizedBox(width: 110,),
                                  Column(
                                    children: const [
                                      Text('Jurusan', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('RPL', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                                                
                                ],
                              ),
                              
                              Text('    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ',
                              style: TextStyle(
                                color: Color.fromRGBO(196, 196, 196, 1)
                              ),
                              ),
                              SizedBox(height: 12,),
                              Row(                        
                                children: [                                  
                              SizedBox(width: 20,),
                              
                                  Column(
                                    children: const [
                                      Text('Kelas', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('RPL5', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  SizedBox(width: 60,),
                                  Column(                                    
                                    children: const [                                      
                                      Text('Tanggal Pengajuan', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('08 September 2022', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                ],
                              )
                            ],    
                          ),                         
                          
                        ],                        
                      ),
                      
                      
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
                        color: const Color.fromRGBO(167, 167, 167, 1),
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
                          Image.asset('assets/images/person.png'),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text('Nama', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('Haris', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  SizedBox(width: 110,),
                                  Column(
                                    children: const [
                                      Text('Jurusan', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('RPL', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                                                
                                ],
                              ),
                              
                              Text('    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ',
                              style: TextStyle(
                                color: Color.fromRGBO(196, 196, 196, 1)
                              ),
                              ),
                              SizedBox(height: 12,),
                              Row(                        
                                children: [                                  
                              SizedBox(width: 20,),
                              
                                  Column(
                                    children: const [
                                      Text('Kelas', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('RPL5', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  SizedBox(width: 60,),
                                  Column(                                    
                                    children: const [                                      
                                      Text('Tanggal Pengajuan', style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),),
                                      SizedBox(height: 4,),
                                      Text('08 September 2022', style: TextStyle(color: Color.fromRGBO(32, 32, 32, 1), fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                ],
                              )
                            ],    
                          ),                         
                          
                        ],                        
                      ),
                      
                      
                    ],
              )),
            ],
          ),
        ),
        
      ),
    );
  }
}
