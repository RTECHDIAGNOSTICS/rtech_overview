// ignore_for_file: unused_local_variable, library_private_types_in_public_api

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../gen/assets.gen.dart';
import '../shared/utils/app_colors.dart';
import '../shared/utils/size_config.dart';

class ServicesPageDesktopTab extends StatefulWidget {
  const ServicesPageDesktopTab({Key? key}) : super(key: key);

  @override
  _ServicesPageDesktopTabState createState() => _ServicesPageDesktopTabState();
}

class _ServicesPageDesktopTabState extends State<ServicesPageDesktopTab> {

  
  void _launchUrl(String urll) async {
    final Uri url = Uri(scheme: 'https', path: urll, );
    if (await canLaunchUrl(url)) {
      await launchUrl(Uri.parse(urll));
    } else {
      log('Could not launch $url');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
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
                top: 50,
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
              width: SizeConfig.sW! * 160,
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // SizedBox(
                                //   height: SizeConfig.sH! * 10,
                                // ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Assets.svgs.checkGreen.svg(),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Assign trucks to Drivers.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.black,
                                              fontSize: SizeConfig.sW! * 1.7),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Assets.svgs.checkGreen.svg(),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Real-time location update.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.black,
                                              fontSize: SizeConfig.sW! * 1.7),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                  onTap: () {
                                    _launchUrl("https://apps.apple.com/us/app/rtech/id6444051539");
                                  },
                                      child: Assets.images.appstore.image(
                                        width: SizeConfig.sW! * 13,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    InkWell(
                                  onTap: () {
                                    _launchUrl("https://play.google.com/store/apps/details?id=com.rtechdiagnostics.rtechUsers");
                                  },
                                      child: Assets.images.playstore.image(
                                        width: SizeConfig.sW! * 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.sW! * 3,
                          ),
                          Expanded(
                            child: Assets.images.mackTruck.image(
                                height: SizeConfig.sW! * 40,
                                width: SizeConfig.sW! * 40),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.sW! * 3,
                      ),
                      const NewLetterSection(),
                      SizedBox(
                        height: SizeConfig.sW! * 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class NewLetterSection extends StatelessWidget {
  const NewLetterSection({
    Key? key,
    this.isMobile = false,
  }) : super(key: key);

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Assets.images.newsletterImage.image(
                    height: SizeConfig.sW! * 15,
                    width: SizeConfig.sW! * 15,
                  ),
                  SizedBox(
                    width: SizeConfig.sW! * 1,
                  ),
                  Text(
                    "Suscribe\nto our newsletter",
                    style: GoogleFonts.kanit(
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                        fontSize: SizeConfig.sW! * 4,
                        height: 1),
                  ),
                ],
              ),
              SizedBox(
                width: SizeConfig.sW! * 6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.sW! * 1.8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:  EdgeInsets.only(left: SizeConfig.sW! * 15),
                          child: TextFormField(
                            validator: (val) {
                              return null;
                            },
                            onChanged: (value) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              disabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedErrorBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: "example@gmail.com",
                              fillColor: AppColors.lightBg,
                              constraints: BoxConstraints(
                                minHeight: SizeConfig.sW! * 2.2,
                                maxWidth: SizeConfig.sW! * 30,
                              ),
                              labelStyle: TextStyle(
                                fontSize: SizeConfig.sW! * 1.2,
                                color: AppColors.textLight,
                              ),
                              errorStyle: TextStyle(
                                color: Colors.red,
                                fontSize: SizeConfig.sW! * 1.2,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: SizeConfig.sW! * 2,
                              color: AppColors.grey,
                            ),
                            cursorColor: AppColors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding:  EdgeInsets.only(right: SizeConfig.sW! * 15),
                        height: SizeConfig.sW! * 7,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.sW! * 1.5,
                                horizontal: SizeConfig.sW! * 1.5),
                            shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: Text(
                            'Subscribe',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.sW! * 2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.newsletterImage.image(),
              SizedBox(
                width: SizeConfig.sW! * 6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Suscribe to our newsletter",
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                      fontSize: SizeConfig.sW! * 1.7,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.sW! * 1.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        validator: (val) {
                          return null;
                        },
                        onChanged: (value) {},
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "example@gmail.com",
                          fillColor: AppColors.lightBg,
                          constraints: BoxConstraints(
                            minHeight: SizeConfig.sW! * 2.2,
                            maxWidth: SizeConfig.sW! * 30,
                          ),
                          labelStyle: TextStyle(
                            fontSize: SizeConfig.sW! * 1.2,
                            color: AppColors.textLight,
                          ),
                          errorStyle: TextStyle(
                            color: Colors.red,
                            fontSize: SizeConfig.sW! * 1.2,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: SizeConfig.sW! * 1.2,
                          color: AppColors.grey,
                        ),
                        cursorColor: AppColors.black,
                      ),
                      SizedBox(
                        height: SizeConfig.sW! * 5,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.sW! * 1.5,
                                horizontal: SizeConfig.sW! * 1.5),
                            shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: Text(
                            'Subscribe',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.sW! * 1.2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          );
  }
}
