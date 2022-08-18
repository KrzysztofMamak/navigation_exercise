// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../application/language_bloc/language_bloc.dart' as _i6;
import '../i_language_facade.dart' as _i4;
import '../language_facade.dart' as _i5;
import 'module/shared_preferences_module.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sharedPreferencesModule = _$SharedPreferencesModule();
  await gh.factoryAsync<_i3.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i4.ILanguageFacade>(
      () => _i5.LanguageFacade(get<_i3.SharedPreferences>()));
  gh.factory<_i6.LanguageBloc>(
      () => _i6.LanguageBloc(get<_i4.ILanguageFacade>()));
  return get;
}

class _$SharedPreferencesModule extends _i7.SharedPreferencesModule {}
