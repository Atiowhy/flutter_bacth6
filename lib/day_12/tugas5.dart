import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  bool like = false;
  bool comment = false;
  bool share = false;
  bool buttonCta1 = false;
  bool buttonCta2 = false;
  int likeCount = 0;
  int commentCount = 0;
  int shareCount = 0;
  int gestureCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: [Text("Keluar")],
        title: Text("DukunSaldo"),
        leading: Padding(
          padding: const EdgeInsetsGeometry.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/icon.jpg"),
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.black38,
        elevation: 4,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.notification_add_rounded),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            padding: EdgeInsets.all(0),
            width: double.infinity,
            height: 150,
            // decoration: BoxDecoration(color: Colors.amber),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 175,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(8, 8),
                        color: Colors.black.withValues(alpha: 0.2),
                        // blurStyle: BlurStyle.outer,
                        blurRadius: 15,
                        spreadRadius: -4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          right: 15,
                          left: 15,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_downward, color: Colors.green),
                            SizedBox(width: 10),
                            Text("Pemasukan"),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          right: 15,
                          left: 15,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Rp",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "12.450.000",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 175,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(8, 8),
                        color: Colors.black.withValues(alpha: 0.2),
                        // blurStyle: BlurStyle.outer,
                        blurRadius: 15,
                        spreadRadius: -4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          right: 15,
                          left: 15,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_upward, color: Colors.red),
                            SizedBox(width: 10),
                            Text("Pengeluaran"),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          right: 15,
                          left: 15,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Rp",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "12.450.000",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Section Card pengeluaran & pemasukan

          // SECTION RIWAYAT
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Berita",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_month, size: 20),
                    SizedBox(width: 5),
                    Text("Mei 2026"),
                  ],
                ),
              ],
            ),
          ),

          // SECTION KATEGORI
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.only(bottom: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          gestureCount += 1;
                          print("ditekan sekali");
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          gestureCount += 2;
                          print("ditekan dua kali");
                        });
                      },
                      onLongPress: () {
                        setState(() {
                          gestureCount += 3;
                          print("tahan lama");
                        });
                      },
                      // padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ini sudah di klik $gestureCount kali",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Minggu Ini",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Bulan Ini",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Tahun Ini",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Tahun Lalu",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 10),
          // card berita
          Container(
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(8, 8),
                    color: Colors.black.withValues(alpha: 0.2),
                    // blurStyle: BlurStyle.outer,
                    blurRadius: 15,
                    spreadRadius: -4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  // SECTION IMAGE
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    height: 200,
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () {
                        print("Navigasi ke halaman detail");
                      },

                      // borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/gambar1.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  // END OF SECTION IMAGE

                  // SECTION TITLE
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Harga Emas Turun Lagi, Jadi Segini Sekarang",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // END OF SECTION TITLE

                  // SECTION ACTION
                  Container(
                    padding: EdgeInsets.only(left: 0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              like = !like;
                              if (like) {
                                likeCount++;
                              } else {
                                likeCount--;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.favorite_border,
                            size: 25,
                            color: like ? Colors.red : Colors.black,
                          ),
                        ),
                        Text("$likeCount"),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              comment = !comment;
                              if (comment) {
                                commentCount++;
                              } else if (!comment) {
                                commentCount--;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.comment_rounded,
                            size: 25,
                            color: comment ? Colors.green : Colors.black,
                          ),
                        ),
                        Text("$commentCount"),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              share = !share;
                              if (share) {
                                shareCount++;
                              } else {
                                shareCount--;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.share_outlined,
                            size: 25,
                            color: share ? Colors.blue : Colors.black,
                          ),
                        ),
                        Text("$shareCount"),
                      ],
                    ),
                  ),
                  // END OF SECTION ACTION

                  // BUTTON CTA
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonCta1 = !buttonCta1;
                        });
                      },
                      child: Text(buttonCta1 ? "Ke Halaman Detail" : "Detail"),
                    ),
                  ),
                  // END BUTTON CTA
                ],
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),

            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(8, 8),
                    color: Colors.black.withValues(alpha: 0.2),
                    // blurStyle: BlurStyle.outer,
                    blurRadius: 15,
                    spreadRadius: -4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SECTION IMAGE
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    height: 200,
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () {
                        print("Navigasi ke halaman detail");
                      },

                      // borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/gambar2.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  // END OF SECTION IMAGE

                  // SECTION TITLE
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Dolar Melonjak, Apa Penyebabnya?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // END OF SECTION TITLE

                  // SECTION ACTION
                  Container(
                    padding: EdgeInsets.only(left: 0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              like = !like;
                              if (like) {
                                likeCount++;
                              } else {
                                likeCount--;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.favorite_border,
                            size: 25,
                            color: like ? Colors.red : Colors.black,
                          ),
                        ),
                        Text("$likeCount"),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              comment = !comment;
                              if (comment) {
                                commentCount++;
                              } else if (!comment) {
                                commentCount--;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.comment_rounded,
                            size: 25,
                            color: comment ? Colors.green : Colors.black,
                          ),
                        ),
                        Text("$commentCount"),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              share = !share;
                              if (share) {
                                shareCount++;
                              } else {
                                shareCount--;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.share_outlined,
                            size: 25,
                            color: share ? Colors.blue : Colors.black,
                          ),
                        ),
                        Text("$shareCount"),
                      ],
                    ),
                  ),
                  // END OF SECTION ACTION

                  // BUTTON CTA
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonCta1 = !buttonCta1;
                        });
                      },
                      child: Text(buttonCta1 ? "Ke Halaman Detail" : "Detail"),
                    ),
                  ),
                  // END BUTTON CTA
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
