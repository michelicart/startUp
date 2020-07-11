import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kFontStyle3 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 17, color: kCorBranco);
final kFontStyleB = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 15, color: kCorPreto);
final kFontStyleTitulo = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 80, color: kCorLaranja);
final kFontStyleTiny = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 12, color: kCorBranco);
final kFontStyleTinyB = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 12, color: kCorPreto);
final kFontStyleSemiTinyOrange = GoogleFonts.montserrat(
    fontWeight: FontWeight.w300, fontSize: 14, color: kCorLaranja);
final kFontStyleSemiRegularGreen = GoogleFonts.montserrat(
    fontWeight: FontWeight.w300, fontSize: 14, color: kCorVerde);
final kFontStyleCidade = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 40, color: Colors.white);

final kCorBranco = Color(0xFFF6F6F3);
final kCorBrancoTrans = Color.fromRGBO(246, 246, 243, 0.3);
final kCorPreto = Color(0xFF393E41);
final kCorLaranja = Color(0xFFF3874F);
final kCorVerde = Color(0xFF1CA39D);

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
                  style: kFontStyleSemiTinyOrange,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '$pessoas x',
                      style: kFontStyleSemiRegularGreen,
                    ),
                    Icon(
                      Icons.person,
                      color: kCorVerde,
                    ),
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
                  style: kFontStyleSemiTinyOrange,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReservationsCardCreator extends StatelessWidget {
  const ReservationsCardCreator({@required this.cidade, @required this.data});

  final String cidade;
  final String data;

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.directions_boat,
                  color: kCorVerde,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
//    Data
                      Text(
                        data,
                        style: kFontStyleTinyB,
                      ),
//    Cidade
                      Text(
                        cidade,
                        style: kFontStyleSemiTinyOrange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
