import 'package:flutter/material.dart';
import 'package:tugas_uts/calculator_page.dart';
import 'package:tugas_uts/calendar.dart';
import 'package:tugas_uts/login_page.dart';
import 'package:tugas_uts/profil_page.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => new LoginPage()),
                  (route) => false);
            },
          ),
        ],
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
                  MaterialPageRoute(builder: (context) => ProfilPage()),
                );
              },
              child: Text('Profil'),
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
                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                );
              },
              child: Text('Kalkulator'),
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
                  MaterialPageRoute(builder: (context) => Calendar()),
                );
              },
              child: Text('Kalender'),
            ),
          ),
        ]),
      ),
    );
  }
}
