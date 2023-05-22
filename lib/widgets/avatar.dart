import 'dart:math';

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.size, required this.username});

  final Size size;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.lightBlueAccent.shade700,
      ),
      child: Center(
        child: Text(
          username.substring(0, min(username.length, 3)).toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
