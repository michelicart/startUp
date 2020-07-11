import 'package:flutter/material.dart';
import 'constants.dart';

class BarcoSelecionado extends StatefulWidget {
  @override
  _BarcoSelecionadoState createState() => _BarcoSelecionadoState();
}

class _BarcoSelecionadoState extends State<BarcoSelecionado> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCorVerde,
      body: ListView(
        children: <Widget>[
          Hero(
            tag: 'card',
            child: Container(
              height: 250,
              child: PageView(
                controller: PageController(viewportFraction: 0.9),
                onPageChanged: (int index) => setState(() => _index = index),
                children: <Widget>[
                  GalleryCardCreator(
                    imagem: 'assets/boat1.jpg',
                  ),
                  GalleryCardCreator(
                    imagem: 'assets/boat1.jpg',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
