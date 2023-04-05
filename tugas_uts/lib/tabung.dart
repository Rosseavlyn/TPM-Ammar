import 'package:flutter/material.dart';

class Tabung extends StatefulWidget {
  const Tabung({Key? key}) : super(key: key);

  @override
  State<Tabung> createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  TextEditingController r = TextEditingController();
  TextEditingController t = TextEditingController();

  double luas = 0.0;
  double hasil = 0.0;

  luasTabung() {
    setState(() {
      double jari = double.parse(r.text);
      double tinggi = double.parse(t.text);

      luas = 2 * 3.14 * jari * (jari + tinggi);
      hasil = luas;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabung'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset(
                "assets/tabung.png",
                fit: BoxFit.cover,
                width: 350,
              ),
              SizedBox(height: 20),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 80,
                        height: 40,
                        child: TextField(
                          controller: r,
                          decoration: InputDecoration(
                              labelText: "Jari-jari",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        )),
                    SizedBox(height: 20),
                    SizedBox(
                        width: 80,
                        height: 40,
                        child: TextField(
                          controller: t,
                          decoration: InputDecoration(
                              labelText: "Tinggi",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        )),
                  ]),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //SizedBox(width: 70),
                  SizedBox(
                    width: 80,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        luasTabung();
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          primary: Colors.green),
                      child: Text("Hitung"),
                    ),
                  ),

                  //SizedBox(width: 20),

                  SizedBox(
                    width: 80,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        r.clear();
                        t.clear();
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          primary: Colors.red),
                      child: Text("Reset"),
                    ),
                  ),
                  //SizedBox(width: 70),
                ],
              ),
              SizedBox(height: 30),
              Expanded(child: Text("Luas Tabung : $hasil cm2")),
            ],
          ),
        ),
      ),
    );
  }
}
