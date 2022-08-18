abstract class ILanguageFacade {
  Future<String?> getLanguage();

  Future<bool> setLanguage(String languageCode);
}
