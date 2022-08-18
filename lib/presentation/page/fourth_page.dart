import 'package:flutter/material.dart';
import 'package:navigation_exercise/util/build_context_ext.dart';
import 'package:navigation_exercise/presentation/common/custom_scaffold.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: context.loc.translate('fourthPage'),
      appBarColor: Colors.green[800],
      drawerBackgroundColor: Colors.green[300],
      child: Container(
        color: Colors.green,
      ),
    );
  }
}
