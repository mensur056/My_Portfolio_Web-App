import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfilo/constants.dart';

import 'package:portfilo/screens/components/are_info_text.dart';
import 'package:portfilo/screens/components/coding.dart';
import 'package:portfilo/screens/components/my_info.dart';
import 'package:portfilo/screens/components/skills.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreInfoText(
                    title: 'Residence',
                    text: 'Azerbaijan',
                  ),
                  AreInfoText(
                    title: 'City',
                    text: 'Baku',
                  ),
                  AreInfoText(
                    title: 'Age',
                    text: '18',
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      'Knowledge',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [SvgPicture.asset('images/check.svg'),

                      Text('Flutter,Dart')
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
