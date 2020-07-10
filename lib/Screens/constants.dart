import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kFontStyle3 =
    GoogleFonts.montserrat(fontWeight: FontWeight.w400, fontSize: 17, color: kCorBranco);
final kFontStyleB = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 15, color: kCorPreto);
final kFontStyleTitulo =
    GoogleFonts.montserrat(fontWeight: FontWeight.w200, fontSize: 80, color: kCorLaranja);
final kFontStyleTiny =
    GoogleFonts.montserrat(fontWeight: FontWeight.w200, fontSize: 12, color: kCorBranco);
final kFontStyleCidade =
GoogleFonts.montserrat(fontWeight: FontWeight.w200, fontSize: 40, color: Colors.white);
final kCorBranco = Color(0xFFF6F6F3);
final kCorBrancoTrans = Color.fromRGBO(246, 246, 243, 100);
final kCorPreto = Color(0xFF393E41);
final kCorLaranja = Color(0xFFF3874F);


const List<String> countriesList = [
  'Change city',
  'Rio de Janeiro',
  'Miami',
  'Palma de Mallorca'
];

class BoatCardCreator extends StatelessWidget {
  const BoatCardCreator(
      {@required this.imagem, this.pessoas, @required this.nomeBarco});

  final String imagem;
  final String pessoas;
  final String nomeBarco;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, left: 3, bottom: 10),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagem),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  nomeBarco,
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  children: <Widget>[
                    Text('$pessoas x'),
                    Icon(Icons.person),
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

class NewsCardCreator extends StatelessWidget {
  const NewsCardCreator({@required this.imagem, @required this.nomeMateria});

  final String imagem;
  final String nomeMateria;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, left: 3, bottom: 10),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagem),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  nomeMateria,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
