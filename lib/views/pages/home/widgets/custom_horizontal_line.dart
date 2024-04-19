import 'package:flutter/material.dart';

class CustomHorizontalLine extends StatelessWidget {
  const CustomHorizontalLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 75,
        height: 6,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
