import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import '/pages/home.dart';
import '/pages/profile.dart';
import '/pages/data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lila\'s Nutrition',
      theme: ThemeData(
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
        unselectedLabelStyle: GoogleFonts.dynaPuff(),
       ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 255, 102)),
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