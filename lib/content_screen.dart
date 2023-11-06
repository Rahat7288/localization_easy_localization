import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content Page'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'application'.tr(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'total_student'.tr(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'dashboard'.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
