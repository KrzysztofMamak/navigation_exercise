abstract class ILanguageService {
  Future<String?> getLanguageCode();

  Future<bool> setLanguageCode(String languageCode);
}
