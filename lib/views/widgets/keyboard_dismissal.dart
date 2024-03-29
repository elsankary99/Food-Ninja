import 'package:flutter/material.dart';

class KeyboardDismissible extends StatelessWidget {
  final Widget child;
  const KeyboardDismissible({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: child,
    );
  }
}
