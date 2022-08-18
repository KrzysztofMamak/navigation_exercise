import 'package:flutter/material.dart';
import 'package:navigation_exercise/i18n/app_localizations.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;
}
