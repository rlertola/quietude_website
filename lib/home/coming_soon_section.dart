import 'package:flutter/material.dart';

import '../constants.dart';
import 'store_button.dart';

class ComingSoonSection extends StatelessWidget {
  final bool isPhoneSize;

  final iosUrl = 'https://quietude.website/';
  const ComingSoonSection({
    Key? key,
    required this.isPhoneSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      StoreButton(kIOSButton(context), iosUrl),
    ];

    return Column(
      children: [
        Text(
          'Available FREE on iOS',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.black,
              ),
        ),
        const SizedBox(height: 20),
        isPhoneSize
            ? Column(
                children: children,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
      ],
    );
  }
}
