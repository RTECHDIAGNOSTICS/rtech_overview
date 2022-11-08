import 'package:flutter/material.dart';
import 'package:rtech_overview/shared/utils/app_colors.dart';

import '../../../gen/assets.gen.dart';
import '../../utils/size_config.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 150,
      color: AppColors.primary,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Assets.images.rTechLogoBlack.image(
            width: SizeConfig.sW! * 10,
            height: SizeConfig.sW! * 10,
          ),
          const SizedBox(width: 20),
          Text(
            "R Tech\nDiagnostics",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.sW! * 3.5,
                ),
          ),
        ],
      ),
    );
  }
}
