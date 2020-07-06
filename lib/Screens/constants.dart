import 'package:flutter/material.dart';

const List<String> countriesList = [
  'Change city',
  'Rio de Janeiro',
  'Miami',
  'Palma de Mallorca'
];

class CardCreator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, left: 3),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/b1.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'SeaOne',
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.people),
                    Icon(Icons.people),
                    Icon(Icons.people),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
