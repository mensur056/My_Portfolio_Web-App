import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/responsive.dart';
import 'package:portfilo/screens/components/my_build_animated_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images2/1136157.png',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover My Amazing \nArt Space!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                MyBuildAnimatedText(),
                SizedBox(
                  height: defaultPadding,
                ),
                if (!Responsive.isMobile(context))
                  ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: EdgeInsets.symmetric(
                              vertical: defaultPadding,
                              horizontal: defaultPadding * 2)),
                      child: Text(
                        'EXPLORE NOW',
                        style: TextStyle(color: darkColor),
                      ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
