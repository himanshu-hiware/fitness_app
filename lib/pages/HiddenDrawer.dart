import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymo/pages/Homepage.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class hiddendrawer extends StatefulWidget {
   hiddendrawer({Key? key}) : super(key: key);


  @override
  State<hiddendrawer> createState() => _hiddendrawerState();
}

class _hiddendrawerState extends State<hiddendrawer> {
  List<ScreenHiddenDrawer> pages = [];
  @override
  void initState(){
    super.initState();
    pages = [
          ScreenHiddenDrawer(
            ItemHiddenMenu(
              name: 'HomePage',
              baseStyle: TextStyle(),
              selectedStyle: TextStyle(),
            ),
            HomePage(),
          )
    ];
  }
  Widget build(BuildContext context) {
    return  HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple,
      screens: pages,
      initPositionSelected: 0,
    );
  }
}
