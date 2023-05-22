import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.callIdController,
    this.margin = const EdgeInsets.only(top: 10),
    required this.hintText,
  });

  final TextEditingController callIdController;
  final EdgeInsets margin;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.grey.shade200,
            width: 1.5,
          ),
        ),
      ),
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: callIdController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),
        ),
      ),
    );
  }
}
