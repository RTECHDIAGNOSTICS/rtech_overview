// ignore_for_file: unused_local_variable, library_private_types_in_public_api

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rtech_overview/gen/assets.gen.dart';
import 'package:rtech_overview/shared/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/scheduler.dart';
import '../shared/utils/size_config.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _launchUrl(String urll) async {
    final Uri url = Uri(
      scheme: 'https',
      path: urll,
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(Uri.parse(urll));
    } else {
      log('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
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
              ? 0
              : sizingInformation.isTablet
                  ? SizeConfig.sW! * 4
                  : SizeConfig.sW! * 4,
          right: sizingInformation.isMobile
              ? 0
              : sizingInformation.isTablet
                  ? SizeConfig.sW! * 4
                  : SizeConfig.sW! * 4,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: SizeConfig.sH! * 5),
          child: SizedBox(
            width: SizeConfig.sW! * 160,
            child: sizingInformation.isDesktop
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: SizeConfig.sH! * 10,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Transform.translate(
                                    offset: Offset(
                                        SizeConfig.sW! * 2, SizeConfig.sW! * 2),
                                    child: Assets.svgs.redCircle.svg(
                                       height: SizeConfig.sW! * 8,
                                      width: SizeConfig.sW! * 8,
                                    )),
                                RichText(
                                  text: TextSpan(
                                      text:
                                          "The easiest\nand reliable way to get your ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              height: 1.3,
                                              fontWeight: FontWeight.w700,
                                              fontSize: SizeConfig.sW! * 4),
                                      children: [
                                        TextSpan(
                                          text: "TRUCK\n",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  height: 1.3,
                                                  color: AppColors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: SizeConfig.sW! * 4),
                                        ),
                                        TextSpan(
                                          text: "back on the road",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  height: 1.3,
                                                  fontWeight: FontWeight.w700,
                                                  color: AppColors.black,
                                                  fontSize: SizeConfig.sW! * 4),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Download the  Rtech app",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black,
                                      fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _launchUrl(
                                        "https://apps.apple.com/us/app/rtech/id6444051539");
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
                                    _launchUrl(
                                        "https://play.google.com/store/apps/details?id=com.rtechdiagnostics.rtechUsers");
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
                        width: SizeConfig.sW! * 10,
                      ),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Assets.images.homeCircleGradBlue.image(
                                height: SizeConfig.sW! * 40,
                                width: SizeConfig.sW! * 40),
                            Padding(
                              padding: const EdgeInsets.only(top: 50.0),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  child: Assets.images.appMockup.image(
                                      height: SizeConfig.sW! * 30,
                                      width: SizeConfig.sW! * 30)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: SizeConfig.sH! * 10,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Transform.translate(
                                    offset: Offset(
                                        SizeConfig.sW! * 10, SizeConfig.sW! * 2),
                                    child: Assets.svgs.redCircle.svg(
                                      height: SizeConfig.sW! * 8,
                                      width: SizeConfig.sW! * 8,
                                    )),
                                RichText(
                                  text: TextSpan(
                                      text:
                                          "The easiest\nand reliable way\nto get your ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              height: 1.3,
                                              fontWeight: FontWeight.w700,
                                              fontSize: SizeConfig.sW! * 4),
                                      children: [
                                        TextSpan(
                                          text: "TRUCK\n",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  height: 1.3,
                                                  color: AppColors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: SizeConfig.sW! * 4),
                                        ),
                                        TextSpan(
                                          text: "back on the road",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  height: 1.3,
                                                  fontWeight: FontWeight.w700,
                                                  color: AppColors.black,
                                                  fontSize: SizeConfig.sW! * 4),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Download the  Rtech app",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black,
                                      fontSize: SizeConfig.sW! * 2),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _launchUrl(
                                        "https://apps.apple.com/us/app/rtech/id6444051539");
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
                                    _launchUrl(
                                        "https://play.google.com/store/apps/details?id=com.rtechdiagnostics.rtechUsers");
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
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Assets.images.homeCircleGradBlue.image(
                                height: SizeConfig.sW! * 40,
                                width: SizeConfig.sW! * 40),
                            Padding(
                              padding: const EdgeInsets.only(top: 50.0),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  child: Assets.images.appMockup.image(
                                      height: SizeConfig.sW! * 30,
                                      width: SizeConfig.sW! * 30)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      );
    });
  }
}

class SocialButton extends StatelessWidget {
  final IconData? icon;
  final Function()? function;
  const SocialButton({
    Key? key,
    this.icon,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: SizeConfig.sW! * 2),
      semanticContainer: true,
      elevation: 12,
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: InkWell(onTap: function, child: Icon(icon)),
      ),
    );
  }
}
