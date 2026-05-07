import 'package:flutter/material.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Saya"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(children: [Text("Atio Wahyudi Saputra")]),
          Row(children: [Icon(Icons.location_on), Text("Jakarta Utara")]),
          Row(children: [Text("Seorang peserta pelatihan PPKD Jakarta Pusat")]),
        ],
      ),
    );
  }
}
