part of 'language_bloc.dart';

@immutable
abstract class LanguageEvent {}

class ChangeLanguageEvent implements LanguageEvent {
  const ChangeLanguageEvent(this.languageCode);

  final String languageCode;
}

class InitLanguageEvent implements LanguageEvent {
  const InitLanguageEvent();
}
