import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/app.dart';
import 'package:food_ninja/boot.dart';

void main() async {
  final overrides = await boot();
  runApp(
    ProviderScope(
      overrides: overrides,
      child: const MyApp(),
    ),
  );
}
