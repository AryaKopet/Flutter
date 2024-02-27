import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Routes and Navigation' ,style: TextStyle(
      color: Colors.white, // Mengatur warna teks menjadi putih
      ),
      ),
        backgroundColor: Color.fromARGB(255, 71, 86, 221),
      ),
      body: const Center(
        child: Text("Home Page", style: TextStyle(fontSize: 50),)
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_right_alt),
        onPressed: (){
          Navigator.of(context).pushNamed('/first');
      },),
    );
  }
}