import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'nav_bar_mobile.dart';
import 'nav_bar_tablet_desktop.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const NavigationBarMobile(),
      tablet: const NavigationBarTabletDesktop(),
    );
  }
}
