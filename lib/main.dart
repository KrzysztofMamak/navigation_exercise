import 'package:flutter/material.dart';
import 'package:navigation_exercise/app.dart';
import 'package:navigation_exercise/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const App());
}
