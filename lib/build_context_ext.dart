import 'package:flutter/material.dart';
import 'package:navigation_exercise/app_localizations.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;
}
