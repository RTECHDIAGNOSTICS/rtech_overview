import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rtech_overview/shared/utils/size_config.dart';

import '../../../gen/assets.gen.dart';
import '../../utils/app_colors.dart';

class NavBarItem extends StatelessWidget {
  final String? text;
  final Function()? function;

  const NavBarItem({
    Key? key,
    @required this.text,
    @required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: function!,
          child: Text(
            text!,
            style: GoogleFonts.kanit(
                  fontSize: SizeConfig.sW! * 1.8,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,),
          ),
        ),
        const SizedBox(width: 5,),
        Assets.svgs.arrow.svg(),
      ],
    );
  }
}
