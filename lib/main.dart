import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quietude_website/privacy_policy/privacy_policy_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'home/my_home_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quietude',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hoverColor: Colors.transparent,
        fontFamily: GoogleFonts.redHatDisplay().fontFamily,
      ),
      home: const MyHomePage(title: 'Quietude'),
      routes: {
        PrivacyPolicyScreen.privacyPolicyScreen: (context) =>
            const PrivacyPolicyScreen(),
      },
    );
  }
}
