import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home_screen.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'package:instagram_clone/screens/profile_screen.dart';
import 'package:instagram_clone/screens/reels_screen.dart';
import 'package:instagram_clone/screens/search_screen.dart';
import 'package:instagram_clone/screens/shop_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static List<Widget> _listOptions = <Widget>[
   HomeScreen(),
   SearchScreen(),
   ReelsScreen(),
   ShopScreen(),
   ProfileScreen(),
  ];
  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:Icon(Icons.home), label: '' , backgroundColor: Colors.black),
      BottomNavigationBarItem(icon:Icon(Icons.search_outlined),label: '' , backgroundColor: Colors.black)
      ,BottomNavigationBarItem(icon:Icon(Icons.smart_display_outlined),label: '' , backgroundColor: Colors.black)
      ,BottomNavigationBarItem(icon:Icon(Icons.card_giftcard_outlined),label: '' , backgroundColor: Colors.black),
      BottomNavigationBarItem(icon:Icon(Icons.person),label: '' , backgroundColor: Colors.black)]
      ,backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      iconSize: 30,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      onTap: onItemTapped,
      ),

      
      
      body: Center(child: _listOptions[_selectedIndex]),
    );
  }
}