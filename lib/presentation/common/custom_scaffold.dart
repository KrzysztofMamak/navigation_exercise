import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:navigation_exercise/application/language_bloc/language_bloc.dart';
import 'package:navigation_exercise/util/ext/build_context_ext.dart';
import 'package:navigation_exercise/presentation/common/custom_drawer.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    required this.title,
    required this.child,
    this.appBarColor,
    this.drawerBackgroundColor,
  }) : super(key: key);

  final String title;
  final Widget child;
  final Color? appBarColor;
  final Color? drawerBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: appBarColor,
        actions: [
          BlocBuilder<LanguageBloc, LanguageState>(
            bloc: context.read<LanguageBloc>(),
            builder: (context, state) {
              return PopupMenuButton<String>(
                // TODO -> fix icon constraints
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: SvgPicture.asset(
                    state.locale?.languageCode == 'pl'
                        ? 'assets/flag_pl.svg'
                        : 'assets/flag_gb.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<String>(
                      value: 'pl',
                      child: Text(context.loc.translate('langPolish')),
                    ),
                    PopupMenuItem<String>(
                      value: 'en',
                      child: Text(context.loc.translate('langEnglish')),
                    ),
                  ];
                },
                onSelected: (value) {
                  context.read<LanguageBloc>().add(ChangeLanguageEvent(value));
                },
              );
            },
          ),
        ],
      ),
      drawer: CustomDrawer(
        backgroundColor: drawerBackgroundColor,
      ),
      body: child,
    );
  }
}
