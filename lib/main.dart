import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sync_groovy/screens/greeting_page.dart';

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
          seedColor: const Color.fromARGB(0, 85, 254, 141),
          background: Colors.black
        ),
        textTheme: GoogleFonts.montserratTextTheme().copyWith(
          titleLarge: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
        ,
        scaffoldBackgroundColor: Colors.black,
      ),
    
      home: GreetingScreen(),
  
    );
  }
}