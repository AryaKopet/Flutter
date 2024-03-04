import 'package:flutter/material.dart';

void main() {
  runApp(Forgot());
}

class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:85),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo.png",
                    height: 85,
                    width: 85,
                  ),
                  SizedBox(width: 10),
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
              SizedBox(height: 50),
              Card(
                elevation: 8.0,
                color: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lupa Password',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        'Tolong masukkan alamat email untuk\nmendapatkan kode reset password',
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 40.0),
                      Text(
                        'Masukkan alamat email',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'example@gmail.com',
                          prefixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo), // Warna saat tidak diinput
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo), // Warna saat diinput
                          ),
                         ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20.0),
                      InkWell(
                          onTap: () {
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
                        SizedBox(height: 15),
                        TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/login');
                              },
                              child: Text(
                                "Kembali ke login",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ],
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
