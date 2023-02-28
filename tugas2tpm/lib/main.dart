import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Regu TPM',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Login(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Login extends StatefulWidget{

  String username = "tes";
  String password = "123";
  void prosesLogin(){}

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          color: Colors.lightBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        shape: BoxShape.circle
                    ),
                    child: Center(
                      child: Icon(Icons.person, size: 50, color: Colors.white,),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Text("Selamat Datang", style: TextStyle(fontSize: 20, color: Colors.black87),),

                  SizedBox(height: 20,),


                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)
                      ),
                      prefixIcon: Icon(Icons.person, size: 40,),
                      hintText: "Masukkan Username",
                      hintStyle: TextStyle(color: Colors.black87),
                      labelText: "Username",
                      labelStyle: TextStyle(color: Colors.black87),
                    ),
                  ),
                  SizedBox(height: 20,),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)
                      ),
                      prefixIcon: Icon(Icons.lock, size: 40,),
                      hintText: "Masukkan Password",
                      hintStyle: TextStyle(color: Colors.black87),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black87),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Card(
                    color: Colors.black87,
                    elevation: 5,
                    child: Container(
                      height: 50,
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: (){},
                        child: Center(
                          child: Text("Masuk", style: TextStyle(fontSize: 20, color: Colors.white),),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}



















