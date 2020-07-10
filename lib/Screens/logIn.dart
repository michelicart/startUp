import 'dart:ui';
import 'package:flutter/material.dart';
import 'constants.dart';

//import 'package:startup/Screens/memberScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/fundo_low.jpg',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.68), BlendMode.srcOver),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.adjust,
                      color: Colors.black,
                      size: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Text(
                      'Kaiē',
                      style: kFontStyleTitulo,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Text(
                      'a boat ready for you in the best spot',
                      style: kFontStyle3,
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      style: kFontStyle3,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'User Name',
                        hintStyle: kFontStyle3,
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      style: kFontStyle3,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: kFontStyle3,
                      ),
                    ),
                  ),
//                  Login
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: FlatButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pushNamed(context, '/memberScreen');
                      },
                      child: Text(
                        'Log In',
                        style: kFontStyleW,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/saibaMais');
                      },
                      child: Text(
                        'Become a Member',
                        style: kFontStyleTiny,
                      ),
                    ),
                    Text(
                      'Forgot Password',
                      style: kFontStyleTiny,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
