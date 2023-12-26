import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/routers/app_router.dart';
import 'package:food_ninja/core/theme/theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: AppTheme.lightThem,
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
    );
  }
}
