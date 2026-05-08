import 'package:flutter/material.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profil Saya",
          style: TextStyle(
            color: Colors.white,
          ), // Memastikan teks berwarna putih
        ),
        centerTitle: true,
        backgroundColor: Colors.red[900], // Mengubah warna AppBar menjadi merah
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(18),
        // color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Atio Wahyudi Saputra",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 20,
                ), // Mengecilkan sedikit ukuran icon
                SizedBox(width: 4), // Jarak kecil antara icon dan teks
                Text("Jakarta Timur", style: TextStyle(fontSize: 15)),
              ],
            ),
            Text(
              "Peserta Pelatihan PPKD",
              style: TextStyle(color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
