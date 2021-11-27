import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/are_info_text.dart';
import 'package:portfilo/screens/components/coding.dart';
import 'package:portfilo/screens/components/knowledge_text.dart';
import 'package:portfilo/screens/components/my_info.dart';
import 'package:portfilo/screens/components/skills.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding),
                          child: Text(
                            'Knowledge',
                            style: TextStyle(color: Colors.orange, fontSize: 16),
                          ),
                        ),
                        KnowledgeText(
                          text: 'Flutter,Dart',
                        ),
                        KnowledgeText(
                          text: 'WebServer,FireBase',
                        ),
                        KnowledgeText(
                          text: 'Git Knowledge',
                        ),
                      ],
                    ),
                    Divider(),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              'Download CV',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset('images/download.svg')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding / 2),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('images/linkedin.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('images/github.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('images/dribble.svg'),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Center(
                      child: Linkify(
                        onOpen: _onOpen,
                        text: "https://github.com/mensur056",
                      ),
                    ), SizedBox(
                      height: defaultPadding,
                    ),
                    Center(
                      child: Linkify(
                        onOpen: _onOpen,
                        text: "https://www.linkedin.com/feed/",
                      ),
                    ), SizedBox(
                      height: defaultPadding,
                    ),
                    Center(
                      child: Linkify(
                        onOpen: _onOpen,
                        text: "https://dribbble.com/Mansur9787",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _onOpen(LinkableElement link) async {
  if (await canLaunch(link.url)) {
    await launch(link.url);
  } else {
    throw 'Could not launch $link';
  }
}
