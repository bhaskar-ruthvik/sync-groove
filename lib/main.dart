import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sync_groovy/widgets/main_drawer.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'providers/spotify_token_provider.dart';
import 'providers/popular_movies_provider.dart';



Future main() async {
  await dotenv.load(fileName: ".env");
  AUTH_TOKEN = await get_token();
  POPULAR_MOVIES_LIST = await getMovies();
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
          elevation: 30.0,
          backgroundColor: Color.fromARGB(102, 2, 35, 118),
          selectedItemColor: Color.fromARGB(255, 220, 245, 240),
          unselectedItemColor: Colors.white,
          // selectedIconTheme: IconThemeData(
          //   color: Color.fromARGB(255, 30, 233, 196)
          // ),
        )
        ,
        scaffoldBackgroundColor: Colors.black,
        searchBarTheme: SearchBarThemeData(
          backgroundColor: MaterialStatePropertyAll( Color.fromARGB(93, 1, 24, 84),)
          //Color.fromARGB(172, 4, 30, 97)
        )
      ),
    
      home: MainDrawer(),
  
    );
  }
}