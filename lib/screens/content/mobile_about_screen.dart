// ignore_for_file: unused_local_variable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Container(
      
        color: AppColors.appBarBG,
      child: ResponsiveBuilder(builder: (context, sizingInformation) {
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
            bottom: SizeConfig.sW! * 5,
            left: sizingInformation.isMobile
                ? SizeConfig.sW! * 4
                : sizingInformation.isTablet
                    ? SizeConfig.sW! * 4
                    : SizeConfig.sW! * 8,
            right: sizingInformation.isMobile
                ? SizeConfig.sW! * 4
                : sizingInformation.isTablet
                    ? SizeConfig.sW! * 4
                    : SizeConfig.sW! * 8,
          ),
          child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.sW! * 5,
                  ),
                  Text(
                    "What you get",
                    style: GoogleFonts.kanit(
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                        fontSize: SizeConfig.sW! * 5),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      
                        text: "O",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.black,
                            fontSize: SizeConfig.sW! * 8),
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
                                    fontSize: SizeConfig.sW! * 3.8),
                          ),
                        ]),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.sW! * 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Transform.translate(
                              offset: Offset(0,SizeConfig.sW! * 1),
                              child: Text(
                                "1",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        height: 0,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.no1Color,
                                        fontSize: SizeConfig.sW! * 20),
                              ),
                            ),
                            SizedBox(width: SizeConfig.sW! * 2),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Assets.images.truckFix.image(
                                    height: SizeConfig.sW! * 10,
                                    width: SizeConfig.sW! * 10,
                                  ),
                                  //  SizedBox(
                                  //   width: SizeConfig.sW! * 2,
                                  // ),
                                  Padding(
                                    padding:  EdgeInsets.only(top: SizeConfig.sW! * 2,),
                                    child: Text(
                                      "Getting you connected to verified mechanic and repair shop that utilizes our diagnostics system or as a rtech certified repair workshop",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.black,
                                              fontSize: SizeConfig.sW! * 3.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.sW! * 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Transform.translate(
                              offset: Offset(0,SizeConfig.sW! * 3),
                            child: Text(
                              "2",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      height: 0,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.no2Color,
                                      fontSize: SizeConfig.sW! * 20),
                            ),
                          ),
                          SizedBox(width: SizeConfig.sW! * 2),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Assets.images.towing.image(
                                    height: SizeConfig.sW! * 10,
                                    width: SizeConfig.sW! * 10,),
                                //  
                                // 
                                Padding(
                                    padding:  EdgeInsets.only(top: SizeConfig.sW! * 2,),
                                  child: Text(
                                    "Getting your truck  off the road with Rtech's nationwide towing and wrecker network",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black,
                                            fontSize: SizeConfig.sW! * 3.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.sW! * 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Transform.translate(
                              offset: Offset(0,SizeConfig.sW! * 1),
                            child: Text(
                              "3",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      height: 0,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.no3Color,
                                      fontSize: SizeConfig.sW! * 20),
                            ),
                          ),
                          SizedBox(width: SizeConfig.sW! * 2),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Assets.images.truckPart.image(
                                    height: SizeConfig.sW! * 10,
                                    width: SizeConfig.sW! * 10,),
                                 SizedBox(
                                  height: SizeConfig.sW! * 2,
                                ),
                                Text(
                                  "Helping you locate truck part no matter where you are",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                          fontSize: SizeConfig.sW! * 3.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.sW! * 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Transform.translate(
                              offset: Offset(0,SizeConfig.sW! * 8),
                            child: Text(
                              "4",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      height: 0,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.no4Color,
                                      fontSize: SizeConfig.sW! * 20),
                            ),
                          ),
                          SizedBox(width: SizeConfig.sW! * 2),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Assets.images.consultation.image(
                                    height: SizeConfig.sW! * 10,
                                    width: SizeConfig.sW! * 10,),
                                 SizedBox(
                                  height: SizeConfig.sW! * 2,
                                ),
                                Text(
                                  "Does your truck have a major issue?",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.black,
                                          fontSize: SizeConfig.sW! * 3.5),
                                ),
                                Text(
                                  "Rtech has a repair (heavy) consultation helping and ensuring you have a second opinion and an estimate provided by our repair specialist, its just like having a mechanic on your team ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                          fontSize: SizeConfig.sW! * 3.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
        );
      }),
    );
  }
}
