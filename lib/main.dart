import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/controllers/providers/language_preference.dart';
import 'package:provider/provider.dart';

import 'screens/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  LanguagePreference languagePreference = LanguagePreference();
  await languagePreference.getLanguage();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('bn'),
      ],
      path: "assets/translations",
      fallbackLocale: Locale('en'),
      child: ChangeNotifierProvider(
        create: (context) => languagePreference,
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
