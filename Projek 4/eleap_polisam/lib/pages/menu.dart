import 'package:flutter/material.dart';


class Menu extends StatelessWidget {

  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Halaman Login' ,style: TextStyle(
      color: Colors.white, // Mengatur warna teks menjadi putih
      ),
      ),
        backgroundColor: Color.fromARGB(255, 71, 86, 221),
      ),
      body: const Center(
        child: Text("Menus Page", style: TextStyle(fontSize: 50),)
      ),
    );
  }
}