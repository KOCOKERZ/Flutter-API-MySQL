import 'package:flutter/material.dart';
import 'DataMatakuliah.dart';
import 'DataMahasiswa.dart';
import 'DataDosen.dart';
import 'DataRuangan.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    DataMahasiswa(),
    DataDosen(),
    DataMatakuliah(),
    DataRuangan(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Universitas Logistik dan Bisnis Internasional',
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.yellow,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.person),
            label: 'Mahasiswa',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.person_2),
            label: 'Dosen',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.book),
            label: 'Mata Kuliah',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.home),
            label: 'Ruangan',
          ),
        ],
      ),
    );
  }
}
/* class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(''), // Tambahkan latar belakang yang diinginkan jika diperlukan
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to ULBI Campus',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                SizedBox(height: 16), // Tambahkan jarak di antara teks dan gambar
                Image.asset(
                  'assets/Logo_ULBI.jpg', // Gantilah 'nama_gambar_anda.png' dengan nama gambar PNG yang sebenarnya
                  width: 394, // Sesuaikan lebar gambar sesuai kebutuhan Anda
                  height: 144, // Sesuaikan tinggi gambar sesuai kebutuhan Anda
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Assesment Tengah Semester',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '1. Mengerjakan ATS pemrograman IV',
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            '2. Memodifikasi code yang diberikan',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          columnWidths: {
            0: FractionColumnWidth(0.3),
            1: FractionColumnWidth(0.7),
          },
          border: TableBorder.all(color: Colors.black),
          children: [
            TableRow(children: [
              Center(child: Text('MATA KULIAH', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
              Center(child: Text('Ruangan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
            ]),
            TableRow(children: [
              Center(child: Text('Sistem Informasi Geografis', style: TextStyle(fontSize: 16))),
              Center(child: Text('315', style: TextStyle(fontSize: 16))),
            ]),
            TableRow(children: [
              Center(child: Text('SAP Advanced', style: TextStyle(fontSize: 16))),
              Center(child: Text('316', style: TextStyle(fontSize: 16))),
            ]),
            TableRow(children: [
              Center(child: Text('Pemrograman 4', style: TextStyle(fontSize: 16))),
              Center(child: Text('315', style: TextStyle(fontSize: 16))),
            ]),
            TableRow(children: [
              Center(child: Text('Keamanan Sistem Informasi', style: TextStyle(fontSize: 16))),
              Center(child: Text('109', style: TextStyle(fontSize: 16))),
            ]),
          ],
        ),
      ),
    );
  }
}



class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/gw.jpg'),
              radius: 50.0,
            ),
            SizedBox(width: 16.0),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama     : Fitrah Ali Akbar Setiawan',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'NPM       : 1214085',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Jurusan : Teknik Informatika',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} */

void main() {
  runApp(MaterialApp(
    home: BottomNav(),
  ));
}
