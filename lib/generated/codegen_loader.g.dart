// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> bn = {
  "application": "অ্যাপ্লিকেশনস",
  "total_student": "টোটাল স্টুডেন্ট",
  "dashboard": "ড্যাশবোর্ড"
};
static const Map<String,dynamic> en = {
  "application": "Application",
  "total_student": "Total Student",
  "dashboard": "Dashboard"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"bn": bn, "en": en};
}
