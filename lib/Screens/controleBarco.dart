import 'package:flutter/material.dart';
import 'package:startup/Screens/constants.dart';
import 'package:startup/widgets/joystick/control_pad.dart';

class ControleTotal extends StatefulWidget {
  @override
  _ControleTotalState createState() => _ControleTotalState();
}

class _ControleTotalState extends State<ControleTotal> {
  int _index = 0;
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
                'Seja bem vindo ao SeoOne',
                style: kFontStyleSubTituloLaranja,
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
                    height: 500,
                    // card height
                    child: PageView(
                      controller: PageController(viewportFraction: 0.9),
                      onPageChanged: (int index) =>
                          setState(() => _index = index),
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 280,
                              child: Expanded(
                                child: GestureDetector(
                                  onTap: () => Navigator.pushNamed(
                                      context, '/barcoSelecionado'),
                                  child: ControllerCardCreator(
                                    imagem: 'assets/boat1.jpg',
                                    nomeArea: 'Motores',
                                  ),
                                ),
                              ),
                            ),
                            //      Central de comando
                            Expanded(
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
                                            backgroundColor: kCorBranco,
                                            iconsColor: kCorVerde,
                                            innerCircleColor: kCorLaranja,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 170,
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
//      Standby button
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Container(
                                                  width: 85,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: kCorBrancoTrans,
                                                    borderRadius:
                                                        BorderRadius.all(
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
                                                padding: const EdgeInsets.only(
                                                    right: 30),
                                                child: Container(
                                                  width: 85,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: kCorBrancoTrans,
                                                    borderRadius:
                                                        BorderRadius.all(
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
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 280,
                              child: Expanded(
                                child: GestureDetector(
                                  onTap: () => Navigator.pushNamed(
                                      context, '/barcoSelecionado'),
                                  child: ControllerCardCreator(
                                    imagem: 'assets/boat1.jpg',
                                    nomeArea: 'Motores',
                                  ),
                                ),
                              ),
                            ),
                            //      Central de comando
                            Expanded(
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
                                            backgroundColor: kCorBranco,
                                            iconsColor: kCorVerde,
                                            innerCircleColor: kCorLaranja,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 170,
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
//      Standby button
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Container(
                                                  width: 85,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: kCorBrancoTrans,
                                                    borderRadius:
                                                        BorderRadius.all(
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
                                                padding: const EdgeInsets.only(
                                                    right: 30),
                                                child: Container(
                                                  width: 85,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: kCorBrancoTrans,
                                                    borderRadius:
                                                        BorderRadius.all(
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
