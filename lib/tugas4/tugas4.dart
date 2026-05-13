import 'package:flutter/material.dart';

class Flutter4 extends StatelessWidget {
  const Flutter4({super.key});

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
                  "Riwayat Transaksi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_month, size: 20),
                    SizedBox(width: 5),
                    Text("Oktober 2023"),
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Semua",
                        style: TextStyle(color: Colors.white),
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
                        "Pemasukan",
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
                        "Pengeluaran",
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
                        "Investasi",
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
                        "Tabungan",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 10),
          // SECTION HISTORY
          ListView.builder(
            padding: EdgeInsets.all(20),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(
                  bottom: 15,
                ), // Jarak antar kotak history
                decoration: BoxDecoration(
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
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  leading: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black87,
                      size: 24,
                    ),
                  ),

                  //
                  title: const Text(
                    "Supermarket Hero",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: const Text(
                      "Belanja Bulanan",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),

                  //
                  trailing: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "- Rp 450.000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "14:20",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          // SECTION INPUT PEMASUKAN
          Container(
            padding: EdgeInsets.all(20),

            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Regist Your Account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Text("username"),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "Username",
                    hintText: "Masukkan Username",
                    fillColor: Colors.grey[250],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Email"),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "Email",
                    hintText: "Masukkan Email",
                    fillColor: Colors.grey[250],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Password"),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "Password",
                    hintText: "Masukkan Password",
                    fillColor: Colors.grey[250],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  height: 50,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text("Register Pag"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
