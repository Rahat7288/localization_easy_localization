import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../controllers/providers/language_preference.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final languagePreference = Provider.of<LanguagePreference>(context);
    return ToggleSwitch(
      initialLabelIndex: languagePreference.language == 'en' ? 0 : 1,
      labels: ["English", "বাংলা"],
      activeBgColors: [
        [Colors.blue],
        [Colors.green]
      ],
      activeFgColor: Colors.white,
      onToggle: (index) {
        if (index == 0) {
          context.setLocale(
            Locale('en'),
          );
          languagePreference.setLanguage('en');
        } else {
          context.setLocale(
            Locale('bn'),
          );
          languagePreference.setLanguage('bn');
        }
      },
    );
  }
}
