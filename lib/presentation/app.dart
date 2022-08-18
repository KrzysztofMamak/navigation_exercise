import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:navigation_exercise/i18n/app_localizations.dart';
import 'package:navigation_exercise/application/language_bloc/language_bloc.dart';
import 'package:navigation_exercise/injection/injection.dart';
import 'package:navigation_exercise/presentation/page/first_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocProvider<LanguageBloc>(
        create: (context) => getIt.get<LanguageBloc>(),
        child: Builder(
          builder: (context) {
            return BlocBuilder<LanguageBloc, LanguageState>(
              bloc: context.read<LanguageBloc>()
                ..add(const InitLanguageEvent()),
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return MaterialApp(
                  locale: state.locale,
                  localizationsDelegates: const [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    AppLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale('en', 'GB'),
                    Locale('pl', 'PL'),
                  ],
                  home: const FirstPage(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
