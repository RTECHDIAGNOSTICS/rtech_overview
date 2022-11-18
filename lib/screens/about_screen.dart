// ignore_for_file: unused_local_variable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              top: SizeConfig.sW! * 5,
              bottom: SizeConfig.sW! * 10,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "What you get",
                  style: GoogleFonts.kanit(
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                      fontSize: SizeConfig.sW! * 2.5),
                ),
                SizedBox(
                  height: SizeConfig.sW! * 2,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.sW! * 8,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      
                        text: "O",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.black,
                            fontSize: SizeConfig.sW! * 4),
                        children: [
                          TextSpan(
                            text:
                                "ur number one priority is for us to get your truck back on the road as soon as possible and here is how we ensure that:",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    fontSize: SizeConfig.sW! * 1.8),
                          ),
                        ]),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.sW! * 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.sW! * 45,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "1",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      height: 0,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.no1Color,
                                      fontSize: SizeConfig.sW! * 15),
                            ),
                            SizedBox(width: SizeConfig.sW! * 0.5),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Assets.images.truckFix.image(
                                  height: SizeConfig.sW! * 5,
                                  width: SizeConfig.sW! * 5,),
                                  //  SizedBox(
                                  //   width: SizeConfig.sW! * 2,
                                  // ),
                                  Text(
                                    "Getting you connected to verified mechanic and repair shop that utilizes our diagnostics system or as a rtech certified repair workshop",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                            fontSize: SizeConfig.sW! * 1.8),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.sW! * 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.sW! * 35,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    height: 0,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.no2Color,
                                    fontSize: SizeConfig.sW! * 15),
                          ),
                          SizedBox(width: SizeConfig.sW! * 0.5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Assets.images.towing.image(
                                  height: SizeConfig.sW! * 5,
                                  width: SizeConfig.sW! * 5,),
                                //  SizedBox(
                                //   width: SizeConfig.sW! * 2,
                                // ),
                                Text(
                                  "Getting your truck  off the road with Rtech's nationwide towing and wrecker network",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                          fontSize: SizeConfig.sW! * 1.8),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.sW! * 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.sW! * 50,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "3",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    height: 0,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.no3Color,
                                    fontSize: SizeConfig.sW! * 15),
                          ),
                          SizedBox(width: SizeConfig.sW! * 0.5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Assets.images.truckPart.image(
                                  height: SizeConfig.sW! * 5,
                                  width: SizeConfig.sW! * 5,),
                                //  SizedBox(
                                //   width: SizeConfig.sW! * 2,
                                // ),
                                Text(
                                  "Helping you locate truck part no matter where you are",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                          fontSize: SizeConfig.sW! * 1.8),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.sW! * 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.sW! * 35,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "4",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    height: 0,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.no4Color,
                                    fontSize: SizeConfig.sW! * 15),
                          ),
                          SizedBox(width: SizeConfig.sW! * 0.5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Assets.images.consultation.image(
                                  height: SizeConfig.sW! * 5,
                                  width: SizeConfig.sW! * 5,),
                                //  SizedBox(
                                //   width: SizeConfig.sW! * 2,
                                // ),
                                Text(
                                  "Does your truck have a major issue?",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.black,
                                          fontSize: SizeConfig.sW! * 1.8),
                                ),
                                Text(
                                  "Rtech has a repair (heavy) consultation helping and ensuring you have a second opinion and an estimate provided by our repair specialist, its just like having a mechanic on your team ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                          fontSize: SizeConfig.sW! * 1.8),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  //For Tablet View//
                  //
                  //
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
