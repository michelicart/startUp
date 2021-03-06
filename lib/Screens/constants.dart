import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//Date picker

final kFontDatePickerMenor = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 11, color: kCorVerde);
final kFontDatePickerMaior = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 24, color: kCorVerde);

final kFontStyleBranco = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 17, color: kCorBranco);
final kFontStyleB = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 15, color: kCorPreto);
final kFontStyleLaranja = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 15, color: kCorLaranja);
final kFontStyleVerde = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 15, color: kCorVerde);

final kFontStyleSubTituloLaranja = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 30, color: kCorLaranja);
final kFontStyleSubTituloBranco = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 30, color: kCorBranco);

final kFontStyleSub2TituloBranco = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 20, color: kCorBranco);

final kFontStyleTituloLaranja = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 80, color: kCorLaranja);
final kFontStyleTituloBranco = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 80, color: kCorBranco);

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
final kFontStyleRegularGreen = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 14, color: kCorVerde);
final kFontStyleSemiRegularOrange = GoogleFonts.montserrat(
    fontWeight: FontWeight.w300, fontSize: 14, color: kCorLaranja);
final kFontStyleSemiRegularGreen = GoogleFonts.montserrat(
    fontWeight: FontWeight.w300, fontSize: 14, color: kCorVerde);

final kFontStyleCidade = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 40, color: Colors.white);

final kFontStyleNumerosDash = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 30, color: kCorVerde);
final kFontStyleIdentificacaoDash = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 15, color: kCorVerde);
final kFontStyleSelecionaControle = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 15, color: kCorBranco);
final kFontStyleNumeroMusica = GoogleFonts.montserrat(
    fontWeight: FontWeight.w200, fontSize: 13, color: kCorBranco);

final kCorBrancoObjetos = Color(0xFfF4F4F2);
final kCorBranco = Color(0xFFFFFFFF);
final kCorBrancoTrans = Color.fromRGBO(246, 246, 243, 0.3);
final kCorPreto = Color(0xFF393E41);
final kCorPretoTrans = Color.fromRGBO(22, 24, 25, 0.7);

final kCorLaranja = Color(0xFFF3874F);
final kCorLaranjaTrans = Color.fromRGBO(95, 53, 31, 0.3);
final kCorVerde = Color(0xFF1CA39D);
final kCorVerdeEscuro = Color(0xFF188c87);

final kCorCinza = Color(0xFFa7a7a7);

final List<String> imgList = [
  'assets/images/Cat1/lagoon3.jpg',
  'assets/images/Cat1/lagoon.jpg',
  'assets/images/Cat1/lagoon1.jpg',
  'assets/images/Cat1/lagoon2.jpg',
  'assets/images/Cat1/lagoon4.jpg',
];

const List<String> countriesList = [
  'Outras cidades',
  'Barcelona',
  'Ilha Grande',
  'Marseille',
  'Miami',
  'Mikonos',
  'Rio de Janeiro',
  'San Francisco',
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
        color: kCorBranco,
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
        color: kCorBranco,
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
                        style: kFontStyleRegularGreen,
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

class ReservationsCardCreator2 extends StatelessWidget {
  const ReservationsCardCreator2({@required this.cidade, @required this.data});

  final String cidade;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, left: 3, bottom: 10),
      child: Card(
        color: kCorBranco,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
//                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
//    Data
//                      Text(
//                        data,
//                        style: kFontStyleRegularGreen,
//                      ),
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
        color: kCorBranco,
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

class ControllerCardCreator extends StatelessWidget {
  const ControllerCardCreator({@required this.nomeArea, @required this.imagem});

  final String nomeArea;
  final String imagem;

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
                  nomeArea,
                  style: kFontStyleSemiRegularOrange,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ComReserva extends StatefulWidget {
  @override
  _ComReservaState createState() => _ComReservaState();
}

class _ComReservaState extends State<ComReserva> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/desbloqueioReserva');
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Center(
          child: SizedBox(
            height: 75,
            // card height
            child: PageView(
              controller: PageController(viewportFraction: 0.9),
              onPageChanged: (int index) => setState(() => _index = index),
              children: <Widget>[
                ReservationsCardCreator(
                  cidade: 'Rio de Janeiro',
                  data: '06/12 - 08/12',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SemReserva extends StatefulWidget {
  @override
  _SemReservaState createState() => _SemReservaState();
}

class _SemReservaState extends State<SemReserva> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/desbloqueioReserva');
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Center(
          child: SizedBox(
            height: 75,
            // card height
            child: PageView(
              controller: PageController(viewportFraction: 0.9),
              onPageChanged: (int index) => setState(() => _index = index),
              children: <Widget>[
                ReservationsCardCreator2(
                  cidade: 'Nenhuma Reserva Ativa',
                  data: '-',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
