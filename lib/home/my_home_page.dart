import 'package:flutter/material.dart';

import '../constants.dart';
import 'coming_soon_section.dart';
import 'left_column.dart';
import 'privacy_policy_button.dart';
import 'quietude_logo.dart';
import 'right_stack.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: width > 800
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * .05),
                const LeftColumn(),
                const Spacer(),
                const RightStack(),
              ],
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QuietudeLogo(size: width * .12),
                    ],
                  ),
                  const SizedBox(height: 40),
                  kScreenshot(context),
                  const SizedBox(height: 40),
                  Text(
                    'Sounds for\n'
                    'Sleep and\n'
                    'Focus',
                    style: TextStyle(
                      fontSize: width * .10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const ComingSoonSection(isPhoneSize: true),
                  const SizedBox(height: 40),
                  const PrivacyPolicyButton(),
                  const SizedBox(height: 40),
                ],
              ),
            ),
    );
  }
}
