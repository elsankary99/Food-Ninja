import 'package:flutter/material.dart';

class WrapIconCover extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;
  final Color color;
  final double size;
  const WrapIconCover({
    required this.icon,
    required this.color,
    super.key,
    this.onTap,
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color.withOpacity(0.15),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
