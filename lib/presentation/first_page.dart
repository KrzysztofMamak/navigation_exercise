import 'package:flutter/material.dart';
import 'package:navigation_exercise/build_context_ext.dart';
import 'package:navigation_exercise/custom_scaffold.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: context.loc.translate('firstPage'),
      appBarColor: Colors.red[800],
      drawerBackgroundColor: Colors.red[300],
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
