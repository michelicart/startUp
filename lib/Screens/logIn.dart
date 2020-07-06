import 'package:flutter/material.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.adjust,
              color: Colors.black,
              size: 80,
            ),
            Text('Kaiē', style: TextStyle(fontSize: 45),),
            Text(
              'a boat ready for you in the best spot',
              style: TextStyle(fontSize: 10),
            ),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(labelText: 'User Name'),
              ),
            ),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            FlatButton(
              color: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, '/memberScreen');
              },
              child: Text(
                'Log In',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/saibaMais');
                  },
                  child: Text(
                    'Become a Member',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
