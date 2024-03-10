import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final permissionProvider =
    ChangeNotifierProvider<PermissionNotifier>((ref) => PermissionNotifier());

class PermissionNotifier extends ChangeNotifier {}
