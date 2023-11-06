import 'package:flutter/material.dart';
import 'package:localization/widgets/language_switch.dart';

import 'content_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            LanguageSwitch(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ContentScreen()));
              },
              child: const Text('Go to Next Page'),
            )
          ],
        ),
      ),
    );
  }
}
