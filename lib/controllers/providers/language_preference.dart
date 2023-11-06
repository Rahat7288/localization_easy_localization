import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguagePreference extends ChangeNotifier {
  String _language = 'en';
  // get the language preference to shared preference
  Future<void> getLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _language = prefs.getString('language') ?? 'en';
    notifyListeners();
  }

  // set the language preference to shared preference
  Future<void> setLanguage(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', language);
    _language = language;
    notifyListeners();
  }

//   get the current language

  String get language => _language;
}
