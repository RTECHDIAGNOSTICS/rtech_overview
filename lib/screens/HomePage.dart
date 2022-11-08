// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rtech_overview/gen/assets.gen.dart';
import 'package:rtech_overview/shared/utils/app_colors.dart';

import '../shared/utils/size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      return Padding(
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
                          RichText(
                            text: TextSpan(
                                text:
                                    "The easiest and reliable way to get your ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        height: 1.3,
                                        fontWeight: FontWeight.w700,
                                        fontSize: SizeConfig.sW! * 4),
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
                                            fontSize: SizeConfig.sW! * 4),
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
                                            fontSize: SizeConfig.sW! * 4),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Download the  Rtech app",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.grey,
                                    fontSize: 20),
                          ),
                          const SizedBox(
                                height: 10,
                              ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Assets.images.appstore.image(
                                width: SizeConfig.sW! * 13,),
                              const SizedBox(
                                width: 15,
                              ),
                              Assets.images.playstore.image(
                                width: SizeConfig.sW! * 13,
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
                          Assets.images.homeCircleGrad.image(
                            height: SizeConfig.sW! * 40,
                            width: SizeConfig.sW! * 40
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(bottomLeft:  Radius.circular(20), bottomRight:  Radius.circular(20)),
                              child: Assets.images.appMockup.image(
                                 height: SizeConfig.sW! * 30,
                            width: SizeConfig.sW! *30
                              )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ) // for tablet view
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
                          RichText(
                            text: TextSpan(
                                text:
                                    "The easiest and reliable way to get your ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        height: 1.3,
                                        fontWeight: FontWeight.w700,
                                        fontSize: SizeConfig.sW! * 4),
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
                                            fontSize: SizeConfig.sW! * 4),
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
                                            fontSize: SizeConfig.sW! * 4),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Download the  Rtech app",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.grey,
                                    fontSize: 20),
                          ),
                          const SizedBox(
                                height: 10,
                              ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Assets.images.appstore.image(
                                width: SizeConfig.sW! * 13,),
                              const SizedBox(
                                width: 15,
                              ),
                              Assets.images.playstore.image(
                                width: SizeConfig.sW! * 13,
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
                          Assets.images.homeCircleGrad.image(
                            height: SizeConfig.sW! * 40,
                            width: SizeConfig.sW! * 40
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(bottomLeft:  Radius.circular(20), bottomRight:  Radius.circular(20)),
                              child: Assets.images.appMockup.image(
                                 height: SizeConfig.sW! * 30,
                            width: SizeConfig.sW! *30
                              )),
                          ),
                        ],
                      ),
                    ),
                  ],
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
