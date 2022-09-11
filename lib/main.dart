import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_nord_theme/flutter_nord_theme.dart';
import 'package:ig/screens/home.dart';
import 'package:ig/screens/onboarding.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // themeMode: ThemeMode.dark, // Or [ThemeMode.dark]
    // theme: NordTheme.light(),
    // darkTheme: NordTheme.dark(),
    home: Scaffold(body: HomeScreen()),
  ));
}
