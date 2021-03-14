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
  //Importando imagens
  var _imagemApp = AssetImage("images/padrao.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text("JokenPo"), backgroundColor: Colors.tealAccent),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  "Escolha do App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              ),
              Image(image: this._imagemApp),
              Padding(
                padding: EdgeInsets.only(top: 25, bottom: 30),
                child: Text(
                  "Resultado",
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "images/pedra.png",
                        height: 100,
                      ),
                      Image.asset(
                        "images/papel.png",
                        height: 100,
                      ),
                      Image.asset(
                        "images/tesoura.png",
                        height: 100,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
