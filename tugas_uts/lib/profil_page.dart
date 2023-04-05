import 'package:flutter/material.dart';
import 'package:tugas_uts/profile_detail.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/amar.jpg'),
              ),

              SizedBox(height: 20),

              Text(
                'Muhammad Amar',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 10),

              Text(
                '123200122',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 30),

             SizedBox(
              height: 30,
              width: 80,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => ProfilDetail()),
                    );
                },
                child: Text('Detail'),
              ),
            ),

            ],
          ),
        ),
      ),
      
    );
  }
}