import 'package:flutter/material.dart';
import 'package:startup/Screens/constants.dart';

class ControleTotal extends StatefulWidget {
  @override
  _ControleTotalState createState() => _ControleTotalState();
}

class _ControleTotalState extends State<ControleTotal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCorBranco,
      body: Center(
        child: Container(
          width: 250,
          child: Text(
            'Seja bem vindo ao SeoOne',
            style: kFontStyleSubTituloLaranja,
          ),
        ),
      ),
    );
  }
}
