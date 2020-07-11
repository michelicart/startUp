import 'package:flutter/material.dart';
import 'package:startup/Screens/barcoSelected.dart';
import 'package:startup/Screens/logIn.dart';
import 'package:startup/Screens/memberScreen.dart';
import 'package:startup/Screens/saibamais.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/memberScreen': (BuildContext context) => MemberScreen(),
//        '/barcoInfo': (BuildContext context) => BarcoInfo(),
        '/saibaMais': (BuildContext context) => SaibaMais(),
        '/barcoSelecionado': (BuildContext context) => BarcoSelecionado(),
      },
    );
  }
}
