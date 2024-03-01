import 'package:flutter/material.dart';


class Login extends StatelessWidget {

  const Login({super.key});

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
      body: SingleChildScrollView (
        child: Padding (
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/logo.png", 
                  height: 200,
                  width: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("e-LEAP POLISAM",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 21, 0, 112),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height:20),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "Lupa Password?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 32, 2, 167),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                ],
              ),
              SizedBox(height: 25,),
              InkWell(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sudah Memiliki Akun?",
                  style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                ],
              ),
            ],)
            ),
        ),
      ),
    );
  }
}