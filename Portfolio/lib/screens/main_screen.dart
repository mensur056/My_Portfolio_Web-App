import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children;

  const MainScreen({ required this.children}) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(flex: 2, child: SideMenu()),
              Expanded(
                flex: 7,child: SingleChildScrollView(child: Column(children: [...children],),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
