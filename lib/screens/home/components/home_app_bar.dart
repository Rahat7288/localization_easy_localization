import 'package:flutter/material.dart';

import '../../../widgets/language_switch.dart';

Widget homeAppBar({required BuildContext context}) => Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(-2, -2),
                        blurRadius: 5,
                        color: Colors.white,
                      ),
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        color: Color(0xFFBEBEBE),
                      ),
                    ],
                  ),
                  child: LanguageSwitch(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
