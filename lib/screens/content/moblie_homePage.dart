// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../gen/assets.gen.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/utils/size_config.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Container(
        margin: EdgeInsets.only(
          top: SizeConfig.sW! * 1,
          bottom: SizeConfig.sW! * 1,
          left: sizingInformation.isMobile
              ? 0
              : sizingInformation.isTablet
                  ? SizeConfig.sW! * 4
                  : SizeConfig.sW! * 8,
          right: sizingInformation.isMobile
              ? 0
              : sizingInformation.isTablet
                  ? SizeConfig.sW! * 4
                  : SizeConfig.sW! * 8,
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.sW! * 8, right: SizeConfig.sW! * 8),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: SizeConfig.sH! * 10,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: SizeConfig.sW! * 12, right: SizeConfig.sW! * 12),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text:
                                    "The easiest and reliable way to get your ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        height: 1.3,
                                        fontWeight: FontWeight.w700,
                                        fontSize: SizeConfig.sW! * 6),
                                children: [
                                  TextSpan(
                                    text: "TRUCK",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            height: 1.3,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: SizeConfig.sW! * 6),
                                  ),
                                  TextSpan(
                                    text: " back on the road",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            height: 1.3,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.black,
                                            fontSize: SizeConfig.sW! * 6),
                                  )
                                ]),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Download the Rtech app",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                  fontSize: SizeConfig.sW! * 3),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Assets.images.appstore.image(
                              width: SizeConfig.sW! * 25,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Assets.images.playstore.image(
                              width: SizeConfig.sW! * 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Assets.images.homeCircleGrad.image(
                            height: SizeConfig.sW! * 90,
                            width: SizeConfig.sW! * 90),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              child: Assets.images.appMockup.image(
                                  height: SizeConfig.sW! * 60,
                                  width: SizeConfig.sW! * 60)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
