import 'package:flutter/material.dart';

import 'nav_bar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu), onPressed: () {},
            // => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         // builder: (context) => NavigationBar(controller: null,),
            //       ),
            // )
          ),
          const NavBarLogo()
        ],
      ),
    );
  }
}
