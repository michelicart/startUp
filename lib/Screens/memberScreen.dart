import 'dart:ui';
import 'package:flutter/material.dart';
import 'constants.dart';

class MemberScreen extends StatefulWidget {
  final Widget reserva;
  MemberScreen({this.reserva});

  @override
  _MemberScreenState createState() => _MemberScreenState(reserva: reserva);
}

class _MemberScreenState extends State<MemberScreen> {
  final Widget reserva;
  _MemberScreenState({this.reserva});

  String cidadeEscolhida = 'Rio de Janeiro';
  String cidade = 'Outras cidades';
  int _index = 0;
  AssetImage imagemcidade = AssetImage('assets/rio_vec3.jpg');

  DropdownButton<String> getDropDownButton() {
    return DropdownButton<String>(
      value: cidade,
      style: kFontStyleBranco,
      dropdownColor: kCorLaranja,
      items: getCities(),
      onChanged: (value) async {
        setState(() {
          value != 'Outro destino' ? cidadeEscolhida = value : value;
          value == 'Rio de Janeiro'
              ? imagemcidade = AssetImage('assets/rio_vec3.jpg')
              : imagemcidade;
          value == 'San Francisco'
              ? imagemcidade = AssetImage('assets/Sanfran3.jpg')
              : imagemcidade;
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
                image: imagemcidade,
                fit: BoxFit.fill,
              ),
            ),
            height: 150,
            width: double.infinity,
//       Texto
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
//             Cidade escolhida
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        cidadeEscolhida,
                        style: kFontStyleCidade,
                      ),
                    ),
//            Escolher cidades
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
            padding: const EdgeInsets.only(top: 35, left: 10),
            child: Text(
              'Barcos Disponíveis',
              style: kFontStyleBranco,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Center(
              child: Hero(
                tag: 'card',
                child: SizedBox(
                  height: 250,
                  // card height
                  child: PageView(
                    controller: PageController(viewportFraction: 0.9),
                    onPageChanged: (int index) =>
                        setState(() => _index = index),
                    children: <Widget>[
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/barcoSelecionado'),
                        child: BoatCardCreator(
                          imagem: 'assets/boat2.jpg',
                          pessoas: '6',
                          nomeBarco: 'SeaOne',
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/barcoSelecionado'),
                        child: BoatCardCreator(
                          imagem: 'assets/boat1.jpg',
                          pessoas: '4',
                          nomeBarco: 'SeaTwo',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
//  Reservas
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 10),
            child: Text(
              'Próximo Destino',
              style: kFontStyleBranco,
            ),
          ),
          reserva,

//  Noticias
//          Padding(
//            padding: const EdgeInsets.only(top: 15, left: 10),
//            child: Text(
//              'Novidades',
//              style: kFontStyleBranco,
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.only(top: 5, bottom: 20),
//            child: Center(
//              child: SizedBox(
//                height: 100,
//                // card height
//                child: PageView(
//                  controller: PageController(viewportFraction: 0.9),
//                  onPageChanged: (int index) => setState(() => _index = index),
//                  children: <Widget>[
//                    NewsCardCreator(
//                      textoNoticia:
//                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy',
//                      nomeMateria: 'Novo Barco em SF',
//                    ),
//                    NewsCardCreator(
//                      textoNoticia:
//                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy',
//                      nomeMateria: 'Best places to Visit',
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
