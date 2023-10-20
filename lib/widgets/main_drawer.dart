import 'package:flutter/material.dart';
import 'package:sync_groovy/screens/greeting_screen.dart';
import 'package:sync_groovy/screens/messages_screen.dart';
import 'package:sync_groovy/screens/movie_screen.dart';
import 'package:sync_groovy/screens/music_screen.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() {
    return _MainDrawerState();
  }
}

class _MainDrawerState extends State<MainDrawer> {
  int _currentIndex = 0;
  final screens = [GreetingScreen(),MusicScreen(),MovieScreen(),MessagesScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex:_currentIndex ,
        onTap: (value) {
          setState(() {
            _currentIndex= value;
          });
          
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',
        backgroundColor: Color.fromARGB(255, 1, 39, 108).withOpacity(0.5)),
        BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Music',
        backgroundColor: Colors.blue.withOpacity(0.5)),
        BottomNavigationBarItem(icon: Icon(Icons.tv),label: 'Movies and TV',
        backgroundColor: Colors.purple.withAlpha(100)),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Messages',
        backgroundColor: Color.fromARGB(255, 0,0,0)),
      ]),
    );
  }
}
