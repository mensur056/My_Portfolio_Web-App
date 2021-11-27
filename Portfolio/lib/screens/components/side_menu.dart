import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/are_info_text.dart';
import 'package:portfilo/screens/components/coding.dart';
import 'package:portfilo/screens/components/knowledge_text.dart';
import 'package:portfilo/screens/components/my_info.dart';
import 'package:portfilo/screens/components/skills.dart';
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
                            onPressed: _linkedURL,
                            icon: SvgPicture.asset('images/linkedin.svg'),
                          ),
                          IconButton(
                            onPressed: _gitHubUrl,
                            icon: SvgPicture.asset('images/github.svg'),
                          ),
                          IconButton(
                            onPressed:_dribbleURL ,
                            icon: SvgPicture.asset('images/dribble.svg'),
                          ),
                          Spacer(),
                        ],
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

_gitHubUrl() async {
  const url = "https://github.com/mensur056";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_dribbleURL() async {
  const url = "https://dribbble.com/Mansur9787";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_linkedURL() async {
  const url = "https://www.linkedin.com/feed/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
