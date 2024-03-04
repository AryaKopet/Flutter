import 'package:flutter/material.dart';
import './pages/login.dart'; //Selesai Membuat Halaman Login
import './pages/forgot.dart';//progres halaman lupa password
import './pages/home.dart';//belum
import './pages/menu.dart';//belum
import './pages/profil.dart';//belum


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
        '/forgot': (context) => ForgotPasswordScreen(),
        '/home': (context) => const Home(),
        '/menu': (context) => const Menu(),
        '/profil': (context) => const Profil(),
      },
    );
  }
}