import 'package:flutter/material.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.fromLTRB(20, 50, 10, 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // Masukkan link gambar dari internet di dalam tanda kutip
                      image: AssetImage("assets/images/icon.jpg"),
                      fit: BoxFit.cover,
                      // Memastikan gambar menutupi seluruh area lingkaran tanpa gepeng
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Atio Wahyudi Saputra",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "atiowahyudi02@gmail.com",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Cilincing, Jakarta",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // card1
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 230,
            margin: EdgeInsets.only(top: 0),

            child: Container(
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(blurRadius: 5)],
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Saldo", style: TextStyle(fontSize: 17)),
                      Text(
                        "Rp. 500.000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("- - - -"),
                        Text("- - - -"),
                        Text("- - - -"),
                        Text("2978"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Valid", style: TextStyle(fontSize: 13)),
                            Text("28/9/2030", style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        SizedBox(width: 78),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CW", style: TextStyle(fontSize: 13)),
                            Text("- - - -", style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // section 2
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.green),
                  child: Column(children: [Icon(Icons.payment)]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
