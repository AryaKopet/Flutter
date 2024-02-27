import 'package:flutter/material.dart';
import './pages/first.dart';
import './pages/second.dart';
import './pages/home.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Route',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/first': (context) => const First(),
        '/second': (context) => const Second()
      },
    );
  }
}