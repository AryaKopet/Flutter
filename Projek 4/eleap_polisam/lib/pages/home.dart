import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/logo.png",
                      height: 65,
                      width: 65,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "e-LEAP POLISAM",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 21, 0, 112),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                  color: Colors.grey.shade300,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15), // Padding kiri
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            isMenuOpen = !isMenuOpen;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "MATAKULIAH MAHASISWA",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15), // Padding kanan
                      child: IconButton(
                        icon: Icon(Icons.person),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/profil');
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CourseContainer(
                    courseName: 'Pemrograman Berbasis Objek',
                    academicYear: 'Semester 4 Reguler',
                    lecturer: 'Oktama Pangestu',
                    color: Colors.indigo.shade400,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CourseContainer(
                    courseName: 'Etika Profesi',
                    academicYear: 'Semester 4 Reguler',
                    lecturer: 'Roy Buana',
                    color: Colors.green.shade400,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CourseContainer(
                    courseName: 'Pengembangan Aplikasi Mobile',
                    academicYear: 'Semester 4 Reguler',
                    lecturer: 'Achmad Affifudin',
                    color: Colors.green.shade600,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CourseContainer(
                    courseName: 'Sistematika Karya Tulis',
                    academicYear: 'Semester 4 Reguler',
                    lecturer: 'Frizka Fitriana',
                    color: Colors.grey.shade700,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CourseContainer(
                    courseName: 'Search Engine Optimization',
                    academicYear: 'Semester 4 Reguler',
                    lecturer: 'Muhadi Tri Wusana',
                    color: Colors.grey.shade500,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
           if (isMenuOpen) // Tampilkan MenuDrawer jika isMenuOpen bernilai true
      Positioned(
        left: 0,
        top: 215, // Ubah nilai top menjadi 0
        child: GestureDetector(
          onTap: () {
            setState(() {
              isMenuOpen = false;
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5, // Lebar menu
            color: Colors.white, // Latar belakang putih
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top + 20, // Padding atas sesuai dengan status bar
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Text(
                    "Menu E-LEAP POLISAM",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  ),  
                ),
                 Divider(
                  height: 20,
                  color: Colors.grey.shade300,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8), // Padding atas dan bawah sebesar 5 px
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade400, // Warna latar belakang indigo
                      borderRadius: BorderRadius.circular(6), // Rounded sebesar 6 px
                    ),
                    child: Center(
                      child: Text(
                        "Jadwal Perkuliahan",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Warna teks putih untuk kontras dengan latar belakang
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8), // Padding atas dan bawah sebesar 5 px
                    decoration: BoxDecoration(
                      color: Colors.green.shade300, // Warna latar belakang hijau 
                      borderRadius: BorderRadius.circular(6), // Rounded sebesar 6 px
                    ),
                    child: Center(
                      child: Text(
                        "Scanner Absensi",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Warna teks putih untuk kontras dengan latar belakang
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8), // Padding atas dan bawah sebesar 5 px
                    decoration: BoxDecoration(
                      color: Colors.lime.shade800, // Warna latar belakang kuning
                      borderRadius: BorderRadius.circular(6), // Rounded sebesar 6 px
                    ),
                    child: Center(
                      child: Text(
                        "Konsultasi Dosen",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Warna teks putih untuk kontras dengan latar belakang
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8), // Padding atas dan bawah sebesar 5 px
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800, // Warna latar belakang abu-abu
                      borderRadius: BorderRadius.circular(6), // Rounded sebesar 6 px
                    ),
                    child: Center(
                      child: Text(
                        "Tambahkan Matakuliah",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Warna teks putih untuk kontras dengan latar belakang
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8), // Padding atas dan bawah sebesar 5 px
                    decoration: BoxDecoration(
                      color: Colors.brown, // Warna latar belakang cokelat
                      borderRadius: BorderRadius.circular(6), // Rounded sebesar 6 px
                    ),
                    child: Center(
                      child: Text(
                        "Kartu Rencana Studi",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Warna teks putih untuk kontras dengan latar belakang
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8), // Padding atas dan bawah sebesar 5 px
                    decoration: BoxDecoration(
                      color: Colors.purple.shade600, // Warna latar belakang ungu
                      borderRadius: BorderRadius.circular(6), // Rounded sebesar 6 px
                    ),
                    child: Center(
                      child: Text(
                        "Kartu Hasil Studi",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Warna teks putih untuk kontras dengan latar belakang
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 150),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 25, // Tinggi button 10 px
                    padding: EdgeInsets.symmetric(vertical: 8), // Padding atas dan bawah sebesar 5 px
                    decoration: BoxDecoration(
                      color: Colors.red.shade900, // Warna latar belakang ungu
                      borderRadius: BorderRadius.circular(6), // Rounded sebesar 6 px
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                        child: Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
  ],
),
    );
  }
}

class CourseContainer extends StatelessWidget {
  final Color color;
  final String courseName;
  final String academicYear;
  final String lecturer;

  const CourseContainer({
    Key? key,
    required this.color,
    required this.courseName,
    required this.academicYear,
    required this.lecturer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$courseName',//nama mata kuliah
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),         
          Text(
            '$academicYear',//tahun semester
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 35), 
          Text(
            '$lecturer',//dosen pengampu
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
