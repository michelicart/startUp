import 'dart:ui';

import 'package:flutter/material.dart';
import 'constants.dart';

class MemberScreen extends StatefulWidget {
  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  String cidadeEscolhida = 'Rio de Janeiro';
  String cidade = 'Change city';
  int _index = 0;

  DropdownButton<String> getDropDownButton() {
    return DropdownButton<String>(
      value: cidade,
      style: kFontStyle3,
      items: getCities(),
      onChanged: (value) async {
        setState(() {
          value != 'Outro destino' ? cidadeEscolhida = value : value;
        });
      },
    );
  }

  List<DropdownMenuItem> getCities() {
    List<DropdownMenuItem<String>> iList = [];
    for (var i = 0; i < countriesList.length; i++) {
      iList.add(
        DropdownMenuItem(
            child: Text(countriesList[i]), value: countriesList[i]),
      );
    }
    return iList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1CA39D),
      body: ListView(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//  Cidade banner
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/rio_vec3.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            height: 150,
            width: double.infinity,
//       Texto
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        cidadeEscolhida,
                        style: kFontStyleCidade,
                      ),
                    ),
                    Container(
                      child: getDropDownButton(),
                    ),
                  ],
                ),
              ),
            ),
          ),
//  Barcos
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Text(
              'Avaliable Boats',
              style: kFontStyle3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Center(
              child: SizedBox(
                height: 250,
                // card height
                child: PageView(
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  children: <Widget>[
                    BoatCardCreator(
                      imagem: 'assets/b1.jpg',
                      pessoas: '6',
                      nomeBarco: 'SeaOne',
                    ),
                    BoatCardCreator(
                      imagem: 'assets/r2.JPG',
                      pessoas: '4',
                      nomeBarco: 'SeaTwo',
                    ),
                  ],
                ),
              ),
            ),
          ),
//  Reservas
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Text(
              'Próximo Destino',
              style: kFontStyle3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Center(
              child: SizedBox(
                height: 150,
                // card height
                child: PageView(
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  children: <Widget>[
                    NewsCardCreator(
                      imagem: 'assets/b1.jpg',
                      nomeMateria: '06/12 - 08/12',
                    ),
                    NewsCardCreator(
                      imagem: 'assets/b1.jpg',
                      nomeMateria: '03/10 - 05/10',
                    ),
                  ],
                ),
              ),
            ),
          ),
//  Noticias
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Text(
              'What\'s happening! ',
              style: kFontStyle3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 20),
            child: Center(
              child: SizedBox(
                height: 150,
                // card height
                child: PageView(
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  children: <Widget>[
                    NewsCardCreator(
                      imagem: 'assets/b1.jpg',
                      nomeMateria: 'Sailing in Mallorca',
                    ),
                    NewsCardCreator(
                      imagem: 'assets/b1.jpg',
                      nomeMateria: 'Best places to Visit',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
