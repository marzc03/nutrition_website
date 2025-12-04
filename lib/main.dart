import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/pages/home.dart';
import '/pages/profile.dart';
import '/pages/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lila\'s Nutrition',
      theme: ThemeData(
       //textTheme: GoogleFonts.dynaPuffTextTheme(),
       textTheme: TextTheme(
        titleLarge: GoogleFonts.dynaPuff(),
        titleMedium: GoogleFonts.dynaPuff(),
        titleSmall: GoogleFonts.dynaPuff(),
        headlineLarge: GoogleFonts.dynaPuff(),
        headlineMedium: GoogleFonts.dynaPuff(),
        headlineSmall: GoogleFonts.dynaPuff(),
        bodyLarge: GoogleFonts.mynerve(),
        bodyMedium: GoogleFonts.mynerve(),
        bodySmall: GoogleFonts.mynerve(),
        labelLarge: GoogleFonts.dynaPuff(),
        labelMedium: GoogleFonts.dynaPuff(),
        labelSmall: GoogleFonts.dynaPuff(),
       ),
       bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle:  GoogleFonts.dynaPuff(), 
        unselectedLabelStyle: GoogleFonts.dynaPuff()
       ),
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 0, 255, 102)),
      ),
      home: const MyHomePage(title: 'Lila\'s Nutrition'),
      routes: {
        '/home': (context) => const MyHomePage(title: 'Home'),
        '/data': (context) => const MyDataPage (title: 'Data'),
        '/profile': (context) => const MyProfilePage (title: 'Profile'),
      },
    );
  }
}

