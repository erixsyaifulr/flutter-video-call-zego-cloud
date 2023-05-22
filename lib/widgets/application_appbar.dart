import 'package:flutter/material.dart';

class ApplicationAppbar extends StatelessWidget {
  const ApplicationAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.blue.shade700,
      child: const Center(
        child: Text(
          'Pidio Kol',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
