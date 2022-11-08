import 'package:flutter/material.dart';
import 'package:rtech_overview/shared/utils/size_config.dart';

import '../../../gen/assets.gen.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Assets.images.rTechLogoBlack.image(
          width: 50,
          height: 50
        ),
        const SizedBox(width: 20),
        Text(
          "R Tech\nDiagnostics",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
