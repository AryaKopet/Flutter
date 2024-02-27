import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Biodata',
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController biodataController = TextEditingController();
  TextEditingController hapusController = TextEditingController();

  String name = '';
  String nim = '';
  String biodata = '';

  void submitForm() {
    setState(() {
      name = nameController.text;
      nim = nimController.text;
      biodata = biodataController.text;
    });
  }

  void clearForm() {
    setState(() {
      nameController.clear();
      nimController.clear();
      biodataController.clear();
      name = '';
      nim = '';
      biodata = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BIODATAKU' ,style: TextStyle(
      color: Colors.white, // Mengatur warna teks menjadi putih
      ),
      ),
        backgroundColor: Color.fromARGB(255, 71, 86, 221),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Nama', 
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 50.0),
                ),
                maxLength: 100,
                onFieldSubmitted: (value) {
                  submitForm();
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                padding: EdgeInsets.only(left: 50.0), // Atur nilai left sesuai kebutuhan
                child: const Text("Nama : "),
                ),
                Text(name)
                ],
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: nimController,
                decoration: InputDecoration(
                  labelText: 'NIM' ,
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 50.0),
                ),
                maxLength: 12,
                onFieldSubmitted: (value) {
                  submitForm();
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                padding: EdgeInsets.only(left: 50.0), // Atur nilai left sesuai kebutuhan
                child: const Text("Nim : "),
                ),
                Text(nim)
                ],
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: biodataController,
                decoration: InputDecoration(
                  labelText: 'Biodata' ,
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 50.0),
                ),
                maxLength: 150,
                maxLines: null,
                onFieldSubmitted: (value) {
                  submitForm();
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                padding: EdgeInsets.only(left: 50.0), // Atur nilai left sesuai kebutuhan
                child: const Text("Biodata : "),
                ),
                Text(biodata)
                ],
              ),
                Padding(
                padding: EdgeInsets.only(top: 50.0), // Atur nilai top sesuai kebutuhan
                child: ElevatedButton(
                onPressed: () {
                String value1 = nameController.text;
                String value2 = nimController.text;
                String value3 = biodataController.text;
                
                setState(() {
                  name = value1;
                  nim = value2;
                  biodata = value3;
                  nameController.clear();
                  nimController.clear();
                  biodataController.clear();
                });
               },
                child: Text('Tambahkan'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 71, 86, 221), // Ubah warna latar belakang
                  onPrimary: Colors.white, // Ubah warna teks
                  minimumSize: Size.fromHeight(50), // Set ukuran minimum tombol
                    ),
                  ),
                ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  clearForm();
                },
                child: Text('Hapus'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 211, 30, 30), // Ubah warna latar belakang
                  onPrimary: Colors.white, // Ubah warna teks
                  minimumSize: Size.fromHeight(50), // Set ukuran minimum tombol
                  // padding: EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // kontroler state untuk hapus inpoutan
    nameController.dispose();
    nimController.dispose();
    biodataController.dispose();
    hapusController.dispose();
    super.dispose();
  }
}