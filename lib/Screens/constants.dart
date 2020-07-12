import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//Date picker

final kFontDatePickerMenor = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 11, color: kCorBranco);
final kFontDatePickerMaior = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 24, color: kCorBranco);

final kFontStyleBranco = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 17, color: kCorBranco);
final kFontStyleB = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 15, color: kCorPreto);

final kFontStyleSubTituloLaranja = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 30, color: kCorLaranja);

final kFontStyleTituloLaranja = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 80, color: kCorLaranja);

final kFontStyleTinyWhite = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 10, color: kCorBranco);
final kFontStyleTinyBlack = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 10, color: kCorPreto);
final kFontStyleTinyOrange = GoogleFonts.montserrat(
    fontWeight: FontWeight.w300, fontSize: 10, color: kCorLaranja);
final kFontStyleTinyGreen = GoogleFonts.montserrat(
  fontWeight: FontWeight.w300,
  fontSize: 10,
  color: kCorVerde,
);

final kFontStyleRegularWhite = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 14, color: kCorBranco);
final kFontStyleRegularBlack = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 12, color: kCorPreto);
final kFontStyleSemiRegularOrange = GoogleFonts.montserrat(
    fontWeight: FontWeight.w300, fontSize: 14, color: kCorLaranja);
final kFontStyleSemiRegularGreen = GoogleFonts.montserrat(
    fontWeight: FontWeight.w300, fontSize: 14, color: kCorVerde);

final kFontStyleCidade = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 40, color: Colors.white);

final kCorBranco = Color(0xFFF6F6F3);
final kCorBrancoTrans = Color.fromRGBO(246, 246, 243, 0.3);
final kCorPreto = Color(0xFF393E41);
final kCorPretoTrans = Color.fromRGBO(22, 24, 25, 0.7);

final kCorLaranja = Color(0xFFF3874F);
final kCorLaranjaTrans = Color.fromRGBO(95, 53, 31, 0.3);
final kCorVerde = Color(0xFF1CA39D);

final List<String> imgList = [
  'assets/boat1.jpg',
  'assets/images/Cat1/lagoon.jpg',
  'assets/images/Cat1/lagoon1.jpg',
  'assets/images/Cat1/lagoon2.jpg',
  'assets/images/Cat1/lagoon3.jpg',
  'assets/images/Cat1/lagoon4.jpg',
];

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
                  style: kFontStyleSemiRegularOrange,
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
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.directions_boat,
                    color: kCorVerde,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.more_vert,
                    color: kCorVerde,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
//    Data
                      Text(
                        data,
                        style: kFontStyleRegularBlack,
                      ),
//    Cidade
                      Text(
                        cidade,
                        style: kFontStyleSemiRegularOrange,
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

class NewsCardCreator extends StatelessWidget {
  const NewsCardCreator(
      {@required this.textoNoticia, @required this.nomeMateria});

  final String textoNoticia;
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    nomeMateria,
                    style: kFontStyleSemiRegularOrange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    textoNoticia,
                    style: kFontStyleTinyBlack,
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

class GalleryCardCreator extends StatelessWidget {
  const GalleryCardCreator(
      {@required this.imagem, this.pessoas, this.nomeBarco});

  final String imagem;
  final String pessoas;
  final String nomeBarco;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0, left: 0, bottom: 0),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagem),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
//                Text(
//                  nomeBarco,
//                  style: kFontStyleSemiRegularOrange,
//                ),
//                Row(
//                  children: <Widget>[
//                    Text(
//                      '$pessoas x',
//                      style: kFontStyleSemiRegularGreen,
//                    ),
//                    Icon(
//                      Icons.person,
//                      color: kCorVerde,
//                    ),
//                  ],
//                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ConfirmarReservaCardCreator extends StatelessWidget {
  const ConfirmarReservaCardCreator({@required this.confirmar, this.data});

  final String confirmar;
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
            child: Center(
              child: Text(
                confirmar,
                style: kFontStyleSubTituloLaranja,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
