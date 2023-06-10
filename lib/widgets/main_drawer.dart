import 'package:flutter/material.dart';
import 'package:sync_groovy/screens/greeting_page.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() {
    return _MainDrawerState();
  }
}

class _MainDrawerState extends State<MainDrawer> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GreetingScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex ,
        onTap: (value) {
          setState(() {
            _currentIndex= value;
          });
          
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Music'),
        BottomNavigationBarItem(icon: Icon(Icons.movie),label: 'Movies'),
        BottomNavigationBarItem(icon: Icon(Icons.tv),label: 'Shows'),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Messages'),
      ]),
    );
  }
}
