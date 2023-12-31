import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/app.dart';
import 'package:food_ninja/boot.dart';

void main() async {
  final overrides = await boot();
  runApp(
    ProviderScope(
      overrides: overrides,
      child: DevicePreview(
        enabled: kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    ),
  );
}
