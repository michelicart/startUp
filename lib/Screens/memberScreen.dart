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
      items: getCities(),
      onChanged: (value) async {
        setState(() {
          value != 'Change city' ? cidadeEscolhida = value : value;
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
      body: Container(
        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
//  Cidade banner
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/rio.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              height: 200,
              width: double.infinity,
//       Texto
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
                        style: TextStyle(color: Colors.black, fontSize: 40),
                      ),
                    ),
                    Container(
                      child: getDropDownButton(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: SizedBox(
                  height: 250,
                  // card height
                  child: PageView(
                    controller: PageController(viewportFraction: 0.7),
                    onPageChanged: (int index) =>
                        setState(() => _index = index),
                    children: <Widget>[
                      CardCreator(),
                      CardCreator(),
                    ],
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
