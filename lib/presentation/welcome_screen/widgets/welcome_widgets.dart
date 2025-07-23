import 'package:flutter/material.dart';

class WelcomeWidgets {
  static Widget details(String title, String value) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontSize: 15)),
              Text(value, style: const TextStyle(fontSize: 15)),
            ],
          ),
        ),
        const Divider(height: 10),
      ],
    );
  }
}



