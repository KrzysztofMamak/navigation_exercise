import 'package:flutter/material.dart';
import 'package:navigation_exercise/util/ext/build_context_ext.dart';
import 'package:navigation_exercise/presentation/navigation/navigation.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    this.backgroundColor,
  }) : super(key: key);

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: ListView(
        children: Navigation.pagesMap.entries.map(
          (e) {
            return ListTile(
              title: Text(context.loc.translate(e.key)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __) {
                      return e.value();
                    },
                    transitionsBuilder:
                        (_, Animation<double> animation, __, Widget child) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                  ),
                );
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
