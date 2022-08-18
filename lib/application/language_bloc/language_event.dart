part of 'language_bloc.dart';

@immutable
abstract class LanguageEvent {}

class ChangeLanguageEvent extends Equatable implements LanguageEvent  {
  const ChangeLanguageEvent(this.languageCode);

  final String languageCode;

  @override
  List<Object?> get props => [languageCode];
}

class InitLanguageEvent implements LanguageEvent {
  const InitLanguageEvent();
}
