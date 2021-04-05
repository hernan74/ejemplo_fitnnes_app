import 'package:ejemplo_fitness_app/src/widget/botton_navigation_bar.dart';
import 'package:ejemplo_fitness_app/src/widget/item_stats.dart';
import 'package:ejemplo_fitness_app/src/widget/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('STATS',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff4B4B88))),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color(0xffF6F4FD),
              borderRadius: BorderRadius.circular(40)),
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomToggleButtons(
                elementos: [
                  ToggleModel(index: 0, titulo: 'Day'),
                  ToggleModel(index: 1, titulo: 'Week'),
                  ToggleModel(index: 2, titulo: 'Month')
                ],
              ),
              _Stats()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottonNavigationBar(),
    );
  }
}

class _Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Table(
        children: [
          TableRow(children: [
            ItemStats(
              colorFondo: Color(0xffFF6968),
              colorIconoFondo: Color(0xffFA867F),
              icono: FontAwesomeIcons.heartbeat,
              titulo: 'HartRate',
              subtitulo: '124 bpm',
              tituloObjetivo: '80-120',
              objetivo: 'Hearthy',
            ),
            ItemStats(
              colorFondo: Color(0xff7A54FF),
              colorIconoFondo: Color(0xff926AFE),
              icono: FontAwesomeIcons.moon,
              titulo: 'Sleep',
              subtitulo: '8h 42 min',
              tituloObjetivo: 'Deep Sleep',
              objetivo: '5 h 13 m',
            )
          ]),
          TableRow(children: [
            ItemStats(
              colorFondo: Color(0xffFF8F61),
              colorIconoFondo: Color(0xffFFA373),
              icono: FontAwesomeIcons.fire,
              titulo: 'Energy Burn',
              objetivo: '900 kcal',
            ),
            ItemStats(
              colorFondo: Color(0xff2AC3FF),
              colorIconoFondo: Color(0xff37D4FD),
              icono: FontAwesomeIcons.shoePrints,
              titulo: 'Steps',
              objetivo: '20.000 Steps',
            )
          ]),
          TableRow(children: [
            ItemStats(
              colorFondo: Color(0xff5A65FF),
              colorIconoFondo: Color(0xff6F7CFB),
              icono: FontAwesomeIcons.running,
              titulo: 'Runnig',
              objetivo: '10 km',
            ),
            ItemStats(
              colorFondo: Color(0xff96DA45),
              colorIconoFondo: Color(0xffADE450),
              icono: FontAwesomeIcons.biking,
              titulo: 'Cycling',
              objetivo: '20 km',
            )
          ]),
        ],
      ),
    );
  }
}
