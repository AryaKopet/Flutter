import 'package:flutter/material.dart';
import './pages/login.dart'; //Selesai Membuat Halaman
import './pages/forgot.dart';
import './pages/home.dart';
import './pages/menu.dart';
import './pages/profil.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-LEAP Polisam',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const FormScreen(),
        '/forgot': (context) => const Forgot(),
        '/home': (context) => const Home(),
        '/menu': (context) => const Menu(),
        '/profil': (context) => const Profil(),
      },
    );
  }
}