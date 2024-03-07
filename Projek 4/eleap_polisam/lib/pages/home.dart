import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
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
                      // Tambahkan fungsi untuk menu pada bagian kiri
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
