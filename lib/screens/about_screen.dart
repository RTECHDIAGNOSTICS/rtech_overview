// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../gen/assets.gen.dart';
import '../shared/utils/app_colors.dart';
import '../shared/utils/size_config.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.left;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.tablet
              ? 50
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Stack(
        children: [
          Container(
              margin: EdgeInsets.only(
                top: SizeConfig.sW! * 10,
                bottom: SizeConfig.sW! *10,
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
            width: SizeConfig.sW! * 160,
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Assets.svgs.truckFix.svg(),
                                 SizedBox(
                                  width: SizeConfig.sW! * 2,
                                ),
                                Flexible(
                                  child: Text(
                                    "Get a mechanic to fix your truck  with ease.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                            fontSize: SizeConfig.sW! * 1.8),
                                  ),
                                ),
                              ],
                            ),
                             SizedBox(height: SizeConfig.sW! * 5,),
                            Row(
                              children: [
                                Assets.svgs.truckPart.svg(),
                                 SizedBox(
                                  width: SizeConfig.sW! * 2,
                                ),
                                Flexible(
                                  child: Text(
                                    "Get New and  Used truck parts on our app.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                            fontSize: SizeConfig.sW! * 1.8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                             SizedBox(width: SizeConfig.sW! * 12,),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Assets.svgs.towing.svg(),
                                 SizedBox(
                                  width: SizeConfig.sW! * 2,
                                ),
                                Flexible(
                                  child: Text(
                                    "Initiate a tow to get your truck off the road.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                            fontSize: SizeConfig.sW! * 1.8),
                                  ),
                                ),
                              ],
                            ),
                             SizedBox(height: SizeConfig.sW! * 5,),
                            Row(
                              children: [
                                Assets.svgs.consultation.svg(),
                                 SizedBox(
                                  width: SizeConfig.sW! * 2,
                                ),
                                Flexible(
                                  child: Text(
                                    "Need professional advice? We are available 24/7.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                            fontSize: SizeConfig.sW! * 1.8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                    //For Tablet View//
                    //
                    //
                  ),
          ),
        ],
      );
    });
  }
}
