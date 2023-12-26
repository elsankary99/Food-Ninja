import 'package:flutter/material.dart';

// extension LocalizationExtension on BuildContext {
//   AppLocalizations get tr => AppLocalizations.of(this);
// }

extension MediaQueryValues on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
