import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-LEAP POLISAM',
      home: FormScreen(), // Changed to FormScreen instead of Login to avoid recursion
    );
  }
}

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key); // Fixed key parameter syntax

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final nimController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                    Text(
                      "e-LEAP POLISAM",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 21, 0, 112),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.0,),
                Card(
                  elevation: 8.0,
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')), // Hanya mengizinkan input numerik untuk nim
                          ],
                          controller: nimController,
                          decoration: InputDecoration(
                            labelText: "Nomor Induk Mahasiswa",
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: passController,
                          obscureText: passToggle,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(
                                  passToggle ? Icons.visibility : Icons.visibility_off),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/forgot');
                              },
                              child: Text(
                                "Lupa Password?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 35),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/home');
                            nimController.clear();
                            passController.clear();
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(15),
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
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sudah Memiliki Akun?",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Daftar",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50, // Tinggi footer
        color: Colors.indigo, // Warna biru muda
        child: Center(
        ),
      ),
    );
  }
}
