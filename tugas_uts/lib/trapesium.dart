import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  TextEditingController sA = TextEditingController();
  TextEditingController sB = TextEditingController();
  TextEditingController sC = TextEditingController();
  TextEditingController sD = TextEditingController();
  TextEditingController tinggi = TextEditingController();

  double luas = 0.0;
  double keliling = 0;
  double hasilKel = 0;
  double hasilLuas = 0;

  luasTrapesium() {
    setState(() {
      double sisiA = double.parse(sA.text);
      double sisiB = double.parse(sB.text);
      double sisiC = double.parse(sC.text);
      double sisiD = double.parse(sD.text);
      double t = double.parse(tinggi.text);

      luas = (sisiA + sisiB) * t * 0.5;
      hasilLuas = luas;
    });
  }

  kelilingTrapesium() {
    setState(() {
      double sisiA = double.parse(sA.text);
      double sisiB = double.parse(sB.text);
      double sisiC = double.parse(sC.text);
      double sisiD = double.parse(sD.text);
      double t = double.parse(tinggi.text);

      keliling = sisiA + sisiB + sisiC + sisiD;
      hasilKel = keliling;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Trapesium'),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(
              text: ("Keliling"),
            ),
            Tab(
              text: ("Luas"),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/trapesium2.png",
                  fit: BoxFit.cover,
                  width: 200,
                ),
                SizedBox(height: 20),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: sA,
                      decoration: InputDecoration(
                          labelText: "Sisi A",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 10),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: sB,
                      decoration: InputDecoration(
                          labelText: "Sisi B",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 10),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: sC,
                      decoration: InputDecoration(
                          labelText: "Sisi C",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 10),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: sD,
                      decoration: InputDecoration(
                          labelText: "Sisi D",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 10),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: tinggi,
                      decoration: InputDecoration(
                          labelText: "Sisi t",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          //luasTrapesium();
                          kelilingTrapesium();
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            primary: Colors.green),
                        child: Text("Hitung"),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          sA.clear();
                          sB.clear();
                          sC.clear();
                          sD.clear();
                          tinggi.clear();
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            primary: Colors.red),
                        child: Text("Reset"),
                      ),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Hasil : $hasilKel",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ])
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/trapesium.png",
                  fit: BoxFit.cover,
                  width: 200,
                ),
                SizedBox(height: 20),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: sA,
                      decoration: InputDecoration(
                          labelText: "Sisi A",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 10),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: sB,
                      decoration: InputDecoration(
                          labelText: "Sisi B",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 10),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: sC,
                      decoration: InputDecoration(
                          labelText: "Sisi C",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 10),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: sD,
                      decoration: InputDecoration(
                          labelText: "Sisi D",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 10),
                SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      controller: tinggi,
                      decoration: InputDecoration(
                          labelText: "Sisi t",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          //luasTrapesium();
                          luasTrapesium();
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            primary: Colors.green),
                        child: Text("Hitung"),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          sA.clear();
                          sB.clear();
                          sC.clear();
                          sD.clear();
                          tinggi.clear();
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            primary: Colors.red),
                        child: Text("Reset"),
                      ),
                    ),
                  ],
                ),

                /*Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      sA.clear();
                      sB.clear();
                      sC.clear();
                      sD.clear();
                      tinggi.clear();
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        primary: Colors.red),
                    child: Text("Reset"),
                  ),
                ),
                  ],
                ),

*/
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Hasil : $hasilLuas",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ])
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
