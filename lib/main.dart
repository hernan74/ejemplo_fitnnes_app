import 'package:ejemplo_fitness_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness app',
      initialRoute: '/',
      routes: {"/": (_) => HomePage()},
    );
  }
}
