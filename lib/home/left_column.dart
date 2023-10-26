import 'package:flutter/material.dart';

import 'coming_soon_section.dart';
import 'quietude_logo.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        SizedBox(height: 40),
        QuietudeLogo(size: 80),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'Sounds \nfor \n'
            'Sleep & Focus',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'Now with a breather!',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
        ),
        Spacer(),
        ComingSoonSection(isPhoneSize: false),
        SizedBox(height: 50),
      ],
    );
  }
}
