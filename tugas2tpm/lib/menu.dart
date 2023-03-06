import 'package:flutter/material.dart';
import 'profile.dart';
import 'perhitungan.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: Text('Profile'))),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 40.0,
                height: 40.0,
              ),
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hitung()),
                      );
                    },
                    child: Text('Kalkulator'))),
          ],
        ),
      ),
    );
  }
}
