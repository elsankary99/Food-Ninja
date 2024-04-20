import 'package:flutter/material.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class MemberType extends StatelessWidget {
  final Color color;
  final String title;
  const MemberType({
    required this.title,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Text(
        title,
        style: context.textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}
