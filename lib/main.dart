import 'dart:math';

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

  var _mensagem = "Resultado";
  //Metodo de selecionar opcoes
  void _opcaoSelecionada(String escolhaUsuario) {
    var opcaoUsuario = ["pedra", "papel", "tesoura"];
    int numeroAleatorio = Random().nextInt(3);
    var escolhaApp = opcaoUsuario[numeroAleatorio];

    //Mostrar  imagem escolhida pelo app
    switch (escolhaApp) {
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagemApp = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("images/tesoura.png");
        });
        break;
    }
    if (escolhaUsuario == "pedra" && escolhaApp == "tesoura" ||
        escolhaUsuario == "tesoura" && escolhaApp == "papel" ||
        escolhaUsuario == "papel" && escolhaApp == "pedra") {
      this._mensagem = "Voce venceu";
    } else {}
  }

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
                  _mensagem,
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
                      GestureDetector(
                        onTap: () => _opcaoSelecionada("pedra"),
                        child: Image.asset(
                          "images/pedra.png",
                          height: 100,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _opcaoSelecionada("papel"),
                        child: Image.asset(
                          "images/papel.png",
                          height: 100,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _opcaoSelecionada("tesoura"),
                        child: Image.asset(
                          "images/tesoura.png",
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
