import 'package:flutter/material.dart';

class ProfilDetail extends StatelessWidget {
  const ProfilDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset(
                "assets/amar.jpg",
                fit: BoxFit.cover,
                width: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Muhammad Amar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '123200122',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Teknologi Pemrograman Mobile / IF-D'),
              SizedBox(height: 10),
              Text('Bantul, 4 Juni 2001'),
              SizedBox(height: 10),
              Text(
                'Dapat membeli waktu',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
