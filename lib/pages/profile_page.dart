import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool temaDark = true;

  void gantiTema() {
    setState(() {
      temaDark = !temaDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: temaDark ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: temaDark ? Colors.grey[700] : Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FOTO PROFIL
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/prof.jpg'), // Pastikan file gambar ada ya Bang!
              backgroundColor: Colors.grey,
            ),
            SizedBox(height: 20),

            // INFORMASI USER
            Text(
              'AHMAD DWI RIFAI', // Ganti sesuai data
              style: TextStyle(
                color: temaDark ? Colors.white : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            
            Text(
              'TI23A3',
              style: TextStyle(
                color: temaDark ? Colors.white70 : Colors.black87,
                fontSize: 16,
              ),
            ),
            Text(
              '230103085',
              style: TextStyle(
                color: temaDark ? Colors.white70 : Colors.black87,
                fontSize: 16,
              ),
            ),
            Text(
              'Teknik Informatika',
              style: TextStyle(
                color: temaDark ? Colors.white70 : Colors.black87,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 40),

            // BUTTON GANTI TEMA
            ElevatedButton(
              onPressed: gantiTema,
              child: Text('Ganti Tema'),
              style: ElevatedButton.styleFrom(
                backgroundColor: temaDark ? Colors.grey[800] : Colors.white,
                foregroundColor: temaDark ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
