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
      minWidth: 40,
      cornerRadius: 50,
      initialLabelIndex: languagePreference.language == 'en' ? 0 : 1,
      labels: ["En", "বাং"],
      activeBgColors: [
        [
          Color(0XFF404258),
        ],
        [
          Color(0XFF404258),
        ],
      ],
      activeFgColor: Colors.white,
      inactiveBgColor: Colors.white,
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
