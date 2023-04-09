import 'package:flutter/material.dart';
import 'menu.dart';
import 'help.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  @override
  int _selectedIndex = 0;
  String tittle = '';
  Widget build(BuildContext context) {
    final List<Widget> pages = [MenuPage(), HelpPage()];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
      print(_selectedIndex);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: 'Help',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
