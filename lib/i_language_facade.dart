abstract class ILanguageFacade {
  Future<String?> getLanguageCode();

  Future<bool> setLanguageCode(String languageCode);
}
