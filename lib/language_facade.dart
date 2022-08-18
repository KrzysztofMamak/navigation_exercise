import 'package:injectable/injectable.dart';
import 'package:navigation_exercise/i_language_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPKeys {
  static const langKey = 'lang_key';
}

@Injectable(as: ILanguageFacade)
class LanguageFacade implements ILanguageFacade {
  const LanguageFacade(this._sp);

  final SharedPreferences _sp;

  @override
  Future<String?> getLanguage() async {
    return _sp.getString(SPKeys.langKey);
  }

  @override
  Future<bool> setLanguage(String languageCode) async {
    return _sp.setString(SPKeys.langKey, languageCode);
  }
}
