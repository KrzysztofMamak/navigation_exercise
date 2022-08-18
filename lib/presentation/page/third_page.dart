import 'package:flutter/material.dart';
import 'package:navigation_exercise/util/ext/build_context_ext.dart';
import 'package:navigation_exercise/presentation/common/custom_scaffold.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: context.loc.translate('thirdPage'),
      appBarColor: Colors.blue[800],
      drawerBackgroundColor: Colors.blue[300],
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
