// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../gen/assets.gen.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/utils/size_config.dart';

class MobileAboutScreen extends StatefulWidget {
  const MobileAboutScreen({Key? key}) : super(key: key);

  @override
  _MobileAboutScreenState createState() => _MobileAboutScreenState();
}

class _MobileAboutScreenState extends State<MobileAboutScreen> {
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
      return Container(
        margin: EdgeInsets.only(
          top: SizeConfig.sW! * 1,
          bottom: SizeConfig.sW! * 1,
          left: sizingInformation.isMobile
              ? SizeConfig.sW! * 30
              : sizingInformation.isTablet
                  ? SizeConfig.sW! * 4
                  : SizeConfig.sW! * 8,
          right: sizingInformation.isMobile
              ? SizeConfig.sW! * 30
              : sizingInformation.isTablet
                  ? SizeConfig.sW! * 4
                  : SizeConfig.sW! * 8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            SizedBox(
              height: SizeConfig.sW! * 8,
            ),
            Column(
              children: [
                Assets.svgs.truckFix.svg(),
                SizedBox(
                  height: SizeConfig.sW! * 3,
                ),
                Text(
                  "Get a mechanic to fix your truck  with ease.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                      fontSize: SizeConfig.sW! * 3.5),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.sW! * 8,
            ),
            Column(
              children: [
                Assets.svgs.truckPart.svg(),
                SizedBox(
                  height: SizeConfig.sW! * 3,
                ),
                Text(
                  "Get New and Used truck parts on our app.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                      fontSize: SizeConfig.sW! * 3.5),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.sW! * 8,
            ),
            Column(
              children: [
                Assets.svgs.towing.svg(),
                SizedBox(
                  height: SizeConfig.sW! * 3,
                ),
                Text(
                  "Initiate a tow to get your truck off the road.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                      fontSize: SizeConfig.sW! * 3.5),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.sW! * 8,
            ),
            Column(
              children: [
                Assets.svgs.consultation.svg(),
                SizedBox(
                  height: SizeConfig.sW! * 3,
                ),
                Text(
                  "Need professional advice? We are available 24/7.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                      fontSize: SizeConfig.sW! * 3.5),
                ),
              ],
            ),
            
            SizedBox(
              height: SizeConfig.sW! * 8,
            ),
          ],
        ),
      );
    });
  }
}
