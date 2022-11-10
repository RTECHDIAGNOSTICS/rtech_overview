import 'package:flutter/material.dart';
import 'package:rtech_overview/shared/utils/size_config.dart';

import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 30, right: 30),
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed:() => Navigator.pop(context), icon: Icon(Icons.close, color: Colors.black,
            size: SizeConfig.sW! * 10,
            ))),
          DrawerItem('Products', () {}),
          DrawerItem('Support',  () {}),
          DrawerItem('Cities',() {}),
        ],
      ),
    );
  }
}
