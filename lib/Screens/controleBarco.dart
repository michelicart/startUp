import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:startup/Screens/constants.dart';
import 'package:startup/widgets/joystick/control_pad.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ControleTotal extends StatefulWidget {
  @override
  _ControleTotalState createState() => _ControleTotalState();
}

class _ControleTotalState extends State<ControleTotal> {
  int _index = 0;
  List<bool> _isSelected = [false, true, false];
  Widget widgetEscolhido = Piloto();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCorVerde,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 250,
              child: Text(
                'Seja bem vindo ao SeaOne',
                style: kFontStyleSubTituloLaranja,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
//          Autonomia
                  Column(
                    children: [
                      Text('70 NM', style: kFontStyleNumerosDash),
                      Text(
                        'Autonomia',
                        style: kFontStyleIdentificacaoDash,
                      ),
                    ],
                  ),
//          Bateria
                  Column(
                    children: [
                      Text(
                        '100%',
                        style: kFontStyleNumerosDash,
                      ),
                      Container(
                        width: 80,
                        height: 25,
                        child: WebsafeSvg.asset('assets/svgs/b3-01.svg',
                            color: Colors.white),
                      ),
                    ],
                  ),

//          Velociade
                  Column(
                    children: [
                      Text(
                        '0 knots',
                        style: kFontStyleNumerosDash,
                      ),
                      Text('Velocidade', style: kFontStyleIdentificacaoDash),
                    ],
                  ),
                ],
              ),
            ),

//            Container(
//              width: 250,
//              child: Text(
//                'Sinta-se a vontade! Quando estiver pronto para sair, ligue os motores no painel. O comando do barco também pode ser feito através do painel virtual abaixo',
//                style: kFontStyleRegularWhite,
//              ),
//            ),
            Image.asset(
              'assets/images/barco.png',
            ),
//      Escolha dos controles
            Container(
              width: MediaQuery.of(context).size.width,
              color: kCorBranco,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: ToggleButtons(
                    color: kCorVerde,
                    selectedColor: kCorBranco,
                    fillColor: kCorLaranja,
                    renderBorder: false,
//                  highlightColor: Colors.lightBlue,
//                  selectedBorderColor: Colors.greenAccent,
//                  disabledColor: Colors.blueGrey,
//                  focusColor: Colors.red,
                    children: <Widget>[
                      Container(
                          width: 80, child: Center(child: Text('Comando'))),
                      Container(
                          width: 80, child: Center(child: Text('Musica'))),
                      Container(width: 80, child: Center(child: Text('Luzes'))),
                    ],
                    isSelected: _isSelected,
                    onPressed: (int index) {
                      setState(() {
                        for (int buttonIndex = 0;
                            buttonIndex < _isSelected.length;
                            buttonIndex++) {
                          if (buttonIndex == index) {
                            _isSelected[buttonIndex] = true;
                          } else {
                            _isSelected[buttonIndex] = false;
                          }
                        }
                        if (index == 0) {
                          widgetEscolhido = Piloto();
                        } else if (index == 1) {
                          widgetEscolhido = Musica();
                        } else if (index == 2) {
                          widgetEscolhido = Luzes();
                        }
                      });
                    },
                  ),
                ),
//                child: ToggleButtons(
//                  fillColor: kCorLaranja,
//                  children: [
//                    FlatButton(
//                      onPressed: () {
//                        setState(() {
//                          widgetEscolhido = Piloto();
//                        });
//                      },
//                      child: Text('Comando'),
//                    ),
//                    FlatButton(
//                      onPressed: () {
//                        setState(() {
//                          widgetEscolhido = Musica();
//                        });
//                      },
//                      child: Text('Musica'),
//                    ),
//                    FlatButton(
//                      onPressed: () {
//                        setState(() {
//                          widgetEscolhido = Luzes();
//                        });
//                      },
//                      child: Text('Luzes'),
//                    ),
//                  ],
//                  isSelected: _isSelected,
//                  onPressed: (int index) {
//                    setState(() {
//                      for (int buttonIndex = 0;
//                          buttonIndex < _isSelected.length;
//                          buttonIndex++) {
//                        if (buttonIndex == index) {
//                          _isSelected[buttonIndex] = true;
//                        } else {
//                          _isSelected[buttonIndex] = false;
//                        }
//                      }
//                    });
//                  },
//                ),
              ),
            ),
            widgetEscolhido,
          ],
        ),
      ),
    );
  }
}

class Piloto extends StatelessWidget {
  const Piloto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            height: 215,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
//      JoyStick
                Positioned(
                  top: 10,
                  child: Container(
                    height: 175,
                    child: JoystickView(
                      backgroundColor: kCorBrancoObjetos,
                      iconsColor: kCorVerde,
                      innerCircleColor: kCorLaranja,
                    ),
                  ),
                ),
                Positioned(
                  top: 170,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
//      Standby button
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            width: 85,
                            height: 40,
                            decoration: BoxDecoration(
                              color: kCorBrancoTrans,
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'standby',
                                style: kFontStyleBranco,
                              ),
                            ),
                          ),
                        ),
//      Auto Button
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                            width: 85,
                            height: 40,
                            decoration: BoxDecoration(
                              color: kCorBrancoTrans,
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'auto',
                                style: kFontStyleBranco,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Musica extends StatefulWidget {
  @override
  _MusicaState createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  double _rating = 50;
  var playButtom = Icons.pause;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//    Shuffle
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: kCorBrancoObjetos),
                    height: 30,
                    width: 30,
                    child: Center(
                        child: Icon(
                      Icons.shuffle,
                      size: 20,
                      color: kCorVerde,
                    )),
                  ),
                ),
              ),
//    Previous
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: kCorBrancoObjetos),
                  height: 40,
                  width: 40,
                  child: Center(
                      child: Icon(
                    Icons.skip_previous,
                    size: 30,
                    color: kCorVerde,
                  )),
                ),
              ),
//    Play
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (playButtom == Icons.play_arrow) {
                        playButtom = Icons.pause;
                      } else if (playButtom == Icons.pause) {
                        playButtom = Icons.play_arrow;
                      }
                      ;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: kCorBrancoObjetos),
                    height: 60,
                    width: 60,
                    child: Center(
                        child: Icon(
                      playButtom,
                      size: 50,
                      color: kCorVerde,
                    )),
                  ),
                ),
              ),
//    Next
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: kCorBrancoObjetos),
                  height: 40,
                  width: 40,
                  child: Center(
                      child: Icon(
                    Icons.skip_next,
                    size: 30,
                    color: kCorVerde,
                  )),
                ),
              ),
//    Volume
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: kCorBrancoObjetos),
                    height: 30,
                    width: 30,
                    child: Center(
                        child: Icon(
                      Icons.volume_up,
                      size: 20,
                      color: kCorVerde,
                    )),
                  ),
                ),
              ),
            ],
          ),
//    Barrinha da musica
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '01:33',
                style: kFontStyleTinyWhite,
              ),
              SizedBox(
                width: 250,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: kCorLaranja,
                    inactiveTrackColor: kCorBrancoObjetos,
                    trackShape: RectangularSliderTrackShape(),
                    trackHeight: 2.0,
                    thumbColor: kCorLaranja,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
                  ),
                  child: Slider(
                    value: _rating,
                    min: 0,
                    max: 100,
                    onChanged: (newRaiting) {
                      setState(() => _rating = newRaiting);
                    },
                  ),
                ),
              ),
              Text(
                '03:47',
                style: kFontStyleTinyWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Luzes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: Center(
        child: Icon(
          Icons.lightbulb_outline,
          color: kCorBranco,
          size: 150,
        ),
      ),
    );
  }
}
