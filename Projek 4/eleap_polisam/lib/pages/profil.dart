import 'package:flutter/material.dart';

void main() {
  runApp(Profil());
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController prodiController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 13, bottom: 13), // Memberikan margin atas dan bawah sebesar 15px
                  child: Text(
                    'Profil Mahasiswa',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.grey[300],
                  child: Image.asset(
                    'images/logo.png',
                    height: 170,
                    width: 170,
                    fit: BoxFit.fill,
                  ),
                ),
               Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
              SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 5), // Jarak antara Name dan NIM
              TextField(
                controller: nimController,
                decoration: InputDecoration(labelText: 'NIM'),
              ),
              SizedBox(height: 5), // Jarak antara NIM dan Program Studi
              TextField(
                controller: prodiController,
                decoration: InputDecoration(labelText: 'Program Studi'),
              ),
              SizedBox(height: 5), // Jarak antara Program Studi dan Jenis Kelamin
              TextField(
                controller: genderController,
                decoration: InputDecoration(labelText: 'Jenis Kelamin'),
              ),
              SizedBox(height: 5), // Jarak antara Jenis Kelamin dan Nomor Telepon
              TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(labelText: 'Nomor Telepon'),
              ),
              SizedBox(height: 5), // Jarak antara Nomor Telepon dan Email
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ],
          ),

                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Simpan data profil
                    String name = nameController.text;
                    String nim = nimController.text;
                    String prodi = prodiController.text;
                    String gender = genderController.text;
                    String phoneNumber = phoneNumberController.text;
                    String email = emailController.text;

                    // Tampilkan data dalam dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Profil Mahasiswa'),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Name: $name'),
                                Text('NIM: $nim'),
                                Text('Course: $prodi'),
                                Text('Gender: $gender'),
                                Text('Phone Number: $phoneNumber'),
                                Text('Email: $email'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Simpan perubahan',
                  style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5), // Menambahkan margin atas sebesar 5px
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    child: Text(
                      'Kembali',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
