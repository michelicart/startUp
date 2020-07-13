import 'package:flutter/material.dart';
import 'package:qr_mobile_vision/qr_camera.dart';
import 'package:qr_mobile_vision/qr_mobile_vision.dart';
import 'constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class DesbloqueioReserva extends StatefulWidget {
  @override
  _DesbloqueioReservaState createState() => _DesbloqueioReservaState();
}

class _DesbloqueioReservaState extends State<DesbloqueioReserva> {
  String qr;
  bool camState = true;

  @override
  initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
//    Camera
            Container(
                child: camState
                    ? Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: QrCamera(
                            onError: (context, error) => Text(
                              error.toString(),
                              style: TextStyle(color: Colors.red),
                            ),
                            qrCodeCallback: (code) {
                              setState(() {
                                qr = code;
//                                qr != null
//                                    ? Navigator.pushNamed(context, '/controle')
//                                    : qr;
                                if (qr != null) {
                                  Navigator.pushNamed(context, '/controle');
                                  camState = false;
                                  print(qr);
                                }
                              });
                            },
                          ),
                        ),
                      )
                    : new Center(child: new Text("Camera inactive"))),

//    Menu inferior
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: kCorBranco,
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Desbloquear barco',
                      style: kFontStyleSubTituloLaranja,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    width: MediaQuery.of(context).size.width * .9,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 200,
                          child: Image.asset('assets/Artboard 1.png'),
                        ),
                        Positioned(
                          right: 10,
                          child: Container(
                              width: 150,
                              child: Text(
                                'você pode encontrar o QR code aqui',
                                style: kFontStyleSemiRegularGreen,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "QRCODE: $qr",
              style: kFontStyleRegularBlack,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Text(
            "press me",
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            setState(() {
              camState = !camState;
            });
          }),
    );
  }
}

//import 'package:flutter/material.dart';
//import 'package:qr_mobile_vision/qr_camera.dart';
//import 'package:qr_mobile_vision/qr_mobile_vision.dart';
//import 'constants.dart';
//
//class SaibaMais extends StatefulWidget {
//  @override
//  _SaibaMaisState createState() => _SaibaMaisState();
//}
//
//class _SaibaMaisState extends State<SaibaMais> {
//  String qr;
//  bool camState = true;
//
//  @override
//  initState() {
//    super.initState();
//  }
//
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.start,
//          children: <Widget>[
//            Text(
//              'Desbloquear barco',
//              style: kFontStyleSubTituloLaranja,
//            ),
////    Camera
//            Container(
//                child: camState
//                    ? Center(
//                        child: Card(
//                          semanticContainer: true,
//                          clipBehavior: Clip.antiAliasWithSaveLayer,
//                          elevation: 6,
//                          shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(20)),
//                          child: Container(
//                            width: MediaQuery.of(context).size.width * 0.9,
//                            height: 250,
//                            child: QrCamera(
//                              onError: (context, error) => Text(
//                                error.toString(),
//                                style: TextStyle(color: Colors.red),
//                              ),
//                              qrCodeCallback: (code) {
//                                setState(() {
//                                  qr = code;
//                                });
//                              },
////                              child: Container(
////                                decoration: BoxDecoration(
////                                  borderRadius:
////                                      new BorderRadius.all(Radius.circular(20)),
////                                  color: Colors.transparent,
////                                  border: Border.all(
////                                      color: Colors.orange,
////                                      width: 1,
////                                      style: BorderStyle.solid),
////                                ),
////                              ),
//                            ),
//                          ),
//                        ),
//                      )
//                    : new Center(child: new Text("Camera inactive"))),
//            Text("QRCODE: $qr"),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//          child: Text(
//            "press me",
//            textAlign: TextAlign.center,
//          ),
//          onPressed: () {
//            setState(() {
//              camState = !camState;
//            });
//          }),
//    );
//  }
//}
