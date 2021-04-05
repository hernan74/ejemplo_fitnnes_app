import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class BottonNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _BottonNavigationProvider(),
      child: Builder(
        builder: (context) {
          final seleccion = Provider.of<_BottonNavigationProvider>(context);

          return BottomNavigationBar(
            currentIndex: seleccion.ventanaSeleccionada,
            onTap: (i) {
              seleccion.ventanaSeleccionada = i;
            },
            selectedItemColor: Color(0xff4B4B87),
            unselectedItemColor: Color(0xff4B4B87).withOpacity(0.5),
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  label: 'Profile'),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.chartBar,
                  ),
                  label: 'Stats'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.medal), label: 'Rewards'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.bullseye), label: 'Goals'),
            ],
          );
        },
      ),
    );
  }
}

class _BottonNavigationProvider extends ChangeNotifier {
  int _ventanaSeleccionada = 0;

  get ventanaSeleccionada => this._ventanaSeleccionada;

  set ventanaSeleccionada(int i) {
    this._ventanaSeleccionada = i;
    notifyListeners();
  }
}
