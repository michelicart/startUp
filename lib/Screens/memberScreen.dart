import 'package:flutter/material.dart';
import 'constants.dart';

class MemberScreen extends StatefulWidget {
  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  String dropdownValue = 'One';
  var countreiesList = ['Rio de Janeiro', 'Miami', 'Palma de Mallorca'];

  @override
  Widget build(BuildContext context) {
    String cidade = 'Rio de Janeiro';

    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //        Cidade
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/rio.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    cidade,
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                  DropdownButton<String>(
                    value: 'ou',
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: countreiesList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
