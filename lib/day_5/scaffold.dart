import 'package:flutter/material.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: [Text("Keluar")],
        title: Text("Registrasi"),
        backgroundColor: Colors.green,
        shadowColor: Colors.black38,
        elevation: 4,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.notification_add_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                // height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(8, 8),
                      color: Colors.black.withValues(alpha: 0.2),
                      // blurStyle: BlurStyle.outer,
                      blurRadius: 15,
                      spreadRadius: -4,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Regist Your Account",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
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
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(8, 8),
                      color: Colors.black.withValues(alpha: 0.2),
                      // blurStyle: BlurStyle.outer,
                      blurRadius: 15,

                      spreadRadius: -4,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      "assets/images/icon.jpg",
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
