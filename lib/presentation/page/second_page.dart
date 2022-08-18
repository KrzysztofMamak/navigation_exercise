import 'package:flutter/material.dart';
import 'package:navigation_exercise/util/ext/build_context_ext.dart';
import 'package:navigation_exercise/presentation/common/custom_scaffold.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: context.loc.translate('secondPage'),
      appBarColor: Colors.yellow[800],
      drawerBackgroundColor: Colors.yellow[300],
      child: Container(
        color: Colors.yellow,
      ),
    );
  }
}
