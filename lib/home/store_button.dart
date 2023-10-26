import 'dart:js' as js;

import 'package:flutter/material.dart';

class StoreButton extends StatelessWidget {
  final Image image;
  final String link;

  const StoreButton(this.image, this.link, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: () {
          js.context.callMethod(
            'open',
            [link],
          );
        },
        style: TextButton.styleFrom(elevation: 0, padding: EdgeInsets.zero),
        child: image,
      ),
    );
  }
}
