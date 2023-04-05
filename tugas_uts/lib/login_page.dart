import 'package:flutter/material.dart';
import 'package:tugas_uts/main_menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String user = '123200122';
  final String pass = 'amar';

  TextEditingController userText = TextEditingController();
  TextEditingController passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text(
              'Log In',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                /*decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                    )
                  ]
                ),*/
                child: TextField(
                  controller: userText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    labelText: 'Username',
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: TextField(
                  obscureText: true,
                  controller: passText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),

              Container(
                  height: 80,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                      ),
                      //maximumSize: const Size.fromHeight(20),
                      minimumSize: const Size.fromWidth(150),
                      
                    ),
                    child: const Text('Log In'),
                    onPressed: () {
                      ceklogin(context);
                    },
                  )
                  ),

          ],
          ),
        ),
    );
  }

  void ceklogin(BuildContext context) {
    if (userText.text == user && passText.text == pass) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainMenu()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User dan Password Anda salah..'),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
}