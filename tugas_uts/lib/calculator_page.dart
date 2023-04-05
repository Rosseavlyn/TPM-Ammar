import 'package:flutter/material.dart';
import 'package:tugas_uts/tabung.dart';
import 'package:tugas_uts/trapesium.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Bangun Datar & Ruang'),
        //automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trapesium()),
                );
              },
              child: Text('Trapesium'),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tabung()),
                );
              },
              child: Text('Tabung'),
            ),
          ),
        ]),
      ),
    );
  }
}
