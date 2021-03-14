import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      //Desabilitar debugBanner
      home: Home(),
      debugShowCheckedModeBanner: false));
}

//Stateful widget, widget dinamico.
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("JokenPo"), backgroundColor: Colors.tealAccent),
    );
  }
}
