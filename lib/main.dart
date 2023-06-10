import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sync_groovy/screens/greeting_page.dart';
import 'package:sync_groovy/widgets/main_drawer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
      ).copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Color.fromARGB(178, 85, 254, 141),
          background: Colors.black
        ),
        textTheme: GoogleFonts.montserratTextTheme().copyWith(
          titleLarge: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(253, 24, 24, 202),
          selectedItemColor: Color.fromARGB(255, 220, 245, 240),
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 30, 233, 196)
          ),
        )
        ,
        scaffoldBackgroundColor: Colors.black,
      ),
    
      home: MainDrawer(),
  
    );
  }
}