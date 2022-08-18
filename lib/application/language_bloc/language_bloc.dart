import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation_exercise/domain/i_language_service.dart';

part 'language_event.dart';

part 'language_state.dart';

@injectable
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final ILanguageService _languageService;

  LanguageBloc(this._languageService) : super(LanguageState.initial()) {
    on<ChangeLanguageEvent>(
      (event, emit) async {
        final languageCode = event.languageCode;
        _languageService.setLanguageCode(languageCode);
        emit(
          LanguageState(
            isLoading: false,
            locale: Locale(languageCode),
          ),
        );
      },
    );
    on<InitLanguageEvent>(
      (event, emit) async {
        emit(
          const LanguageState(
            isLoading: true,
          ),
        );
        var languageCode = await _languageService.getLanguageCode();

        if (languageCode == null) {
          languageCode = Platform.localeName.substring(1, 3);
          _languageService.setLanguageCode(languageCode);
        }

        emit(
          LanguageState(
            isLoading: false,
            locale: Locale(languageCode),
          ),
        );
      },
    );
  }
}
