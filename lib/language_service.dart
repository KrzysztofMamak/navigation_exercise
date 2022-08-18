import 'package:injectable/injectable.dart';
import 'package:navigation_exercise/i_language_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPKeys {
  static const langKey = 'lang_key';
}

@Injectable(as: ILanguageService)
class LanguageService implements ILanguageService {
  const LanguageService(this._sp);

  final SharedPreferences _sp;

  @override
  Future<String?> getLanguageCode() async {
    return _sp.getString(SPKeys.langKey);
  }

  @override
  Future<bool> setLanguageCode(String languageCode) async {
    return _sp.setString(SPKeys.langKey, languageCode);
  }
}
