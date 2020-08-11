import 'package:flutter/material.dart';
import 'package:startup/Screens/memberScreen.dart';
import 'constants.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class BarcoSelecionado extends StatefulWidget {
  @override
  _BarcoSelecionadoState createState() => _BarcoSelecionadoState();
}

class _BarcoSelecionadoState extends State<BarcoSelecionado> {
  int _index = 0;
  int _current = 0;

  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(0.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      style: AlertStyle(
        overlayColor: kCorPretoTrans,
        titleStyle: kFontStyleSubTituloLaranja,
        descStyle: kFontStyleRegularBlack,
      ),
      type: AlertType.success,
      title: "Reserva confirmada!",
      desc: "Nos vemos a bordo do SeaOne.",
      buttons: [
        DialogButton(
          color: kCorLaranja,
          child: Text(
            "OK!",
            style: kFontStyleBranco,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MemberScreen(
                  reserva: ComReserva(),
                ),
              ),
            );
          },
          width: 120,
        )
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCorVerde,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
//    Fotos Barco
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(6, 6), // changes position of shadow
                    ),
                  ],
                ),
                child: CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                      viewportFraction: 1,
                      height: 200,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((url) {
                  int index = imgList.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? kCorBranco : kCorBrancoTrans,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //    Nome do Barco
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      'SeaOne 41',
                      style: kFontStyleSubTituloBranco,
                    ),
                  ),
                ),
//    Sobre o barco
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 20, right: 3, left: 3),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      'O SeaOne é o barco prefeito para sua familia e amigos. Possui 3 cabines independes que acomodam 6 pessoas confortavelmente. No interior da embarcacão encontra-se obras artisticas do artista Blubla e seu conceito moderno clean',
                      style: kFontStyleRegularWhite,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
//    Datas de Reserva
                Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Escolha uma data:',
                            style: kFontStyleSub2TituloBranco,
                          ),
                        ),
                        Container(
                          color: kCorBranco,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: DatePicker(
                              DateTime.now().add(Duration(days: 0)),
                              width: 50,
                              height: 80,
                              controller: _controller,
                              initialSelectedDate: DateTime.now(),
                              selectionColor: kCorVerde,
                              selectedTextColor: kCorBrancoObjetos,
                              dayTextStyle: kFontDatePickerMenor,
                              dateTextStyle: kFontDatePickerMaior,
                              monthTextStyle: kFontDatePickerMenor,
                              onDateChange: (date) {
                                // New date selected
                                setState(() {
                                  _selectedValue = date;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Center(
                    child: SizedBox(
                      height: 60,
                      // card height
                      child: SizedBox(
                        width: 220,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: kCorBranco),
                            borderRadius: BorderRadius.circular(
                              (40),
                            ),
                          ),
                          color: Colors.transparent,
                          onPressed: () => _onAlertButtonPressed(context),
                          child: Text(
                            'Confirmar Reserva',
                            style: kFontStyleBranco,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
