import 'package:flutter/material.dart';


class First extends StatelessWidget {

  const First({super.key});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("First Page", style: TextStyle(fontSize: 50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: const Text("<< Back", style: TextStyle(fontSize: 30))
                ),
                OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/second');
                  },
                  child: const Text("Next >>", style: TextStyle(fontSize: 30))
                )
              ],
            )
          ],
        )
      ),
    );
  }
}