import 'package:flutter/material.dart';
import './pages/login.dart';  //Selesai Membuat Halaman Login
import './pages/forgot.dart'; //Selesai Membuat Halaman Lupa Password
import './pages/home.dart';   //Selesai Membuat Halaman Utama Aplikasi
import './pages/menu.dart';   //belum
import './pages/profil.dart'; //Selesai Membuat Halaman Profil


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
        '/home': (context) => Home(),
        '/menu': (context) => const Menu(),
        '/profil': (context) => ProfilePage(),
      },
    );
  }
}