part of 'language_bloc.dart';

@immutable
class LanguageState {
  const LanguageState({
    required this.isLoading,
    this.locale,
  });

  final Locale? locale;
  final bool isLoading;

  factory LanguageState.initial() => const LanguageState(isLoading: true);
}
