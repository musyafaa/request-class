import "package:flutter/material.dart";

void main() {
  runApp(new ControlleApp());
}

class ControlleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      backgroundColor: new Color(0xFF26C6DA),
    ),
    floatingActionButton: new FloatingActionButton(
        tooltip: 'Add',
        child: new Icon(Icons.add),
        backgroundColor: new Color(0xFFF44336),
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context) {
            return new AlertDialog(
              title: new Text("My Super title"),
              content: new Text("Hello World"),
            );
          });
        }
    ),
  );
}