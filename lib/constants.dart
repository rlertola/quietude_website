import 'package:flutter/material.dart';

kAppIconCircle(BuildContext context) => ClipOval(
      child: Image.asset(
        'assets/app_icon_circle.png',
      ),
    );

kIOSButton(BuildContext context) => Image.asset(
      'assets/appstore.png',
      fit: BoxFit.fill,
    );

kLogo(BuildContext context) => Image.asset(
      'assets/logo_check_partial.png',
      width: MediaQuery.of(context).size.width * 75,
      // height: 400,
      fit: BoxFit.cover,
    );

kScreenshot(BuildContext context) => Image.asset(
      'assets/screenshotBigger.png',
      width: MediaQuery.of(context).size.width * .40,
      // height: 400,
      fit: BoxFit.contain,
    );

const kSupportEmail = 'ryraydev@gmail.com';
