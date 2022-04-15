// Design Imports
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vag_pwa/theme/custom_theme.dart';

// Utility Imports
import 'utilities/api.dart';

// Page Imports
import 'pages/audition_screen.dart';
import 'package:vag_pwa/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.darkTheme,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
