import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'center_page.dart';

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
            Text(
              'dashboard'.tr(),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CenterPage()));
              },
              child: const Text('Go to Next Page'),
            )
          ],
        ),
      ),
    );
  }
}
