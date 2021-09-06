import 'package:ejemplo_fitness_app/src/widget/crear_circulo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemStats extends StatelessWidget {
  final Color colorFondo;
  final Color colorIconoFondo;
  final double ancho;
  final double alto;
  final String titulo;
  final String subtitulo;
  final String tituloObjetivo;
  final String objetivo;
  final IconData icono;
  const ItemStats(
      {Key key,
      this.colorFondo = Colors.grey,
      this.ancho = 120,
      this.alto = 180,
      this.titulo = '',
      this.icono = Icons.adjust_sharp,
      this.colorIconoFondo = Colors.grey,
      this.subtitulo = '',
      this.tituloObjetivo = 'Daily Goals',
      this.objetivo = ''});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: ancho,
        height: alto,
        decoration: BoxDecoration(
            color: colorFondo, borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    titulo,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Spacer(),
                  CrearCirculo(
                    color: colorIconoFondo,
                    size: 7,
                    child: Center(
                        child: FaIcon(
                      icono,
                      size: 30,
                      color: Colors.white,
                    )),
                  ),
                  SizedBox(
                    width: 35,
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(subtitulo,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27)),
                Spacer()
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    tituloObjetivo,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Text(objetivo,
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
