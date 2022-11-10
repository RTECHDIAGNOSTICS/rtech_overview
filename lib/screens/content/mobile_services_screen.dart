// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../gen/assets.gen.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/utils/size_config.dart';
import '../services_desktop_tablet.dart';

class MobileServicesScreen extends StatefulWidget {
  const MobileServicesScreen({Key? key}) : super(key: key);

  @override
  _MobileServicesScreenState createState() => _MobileServicesScreenState();
}

class _MobileServicesScreenState extends State<MobileServicesScreen> {
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
                top: SizeConfig.sW! * 2,
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
              width: SizeConfig.sW! * 160,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.images.mackTruck.image(
                          height: SizeConfig.sW! * 60,
                          width: SizeConfig.sW! * 60),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Assets.svgs.checkGreen.svg(
                              
                            ),
                          
                          Text(
                            "Assign trucks to Drivers.",
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    fontSize: SizeConfig.sW! * 4),
                          ),],
                          ),
                      const SizedBox(
                        height: 5,
                      ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.svgs.checkGreen.svg(),
                              
                              Text(
                                "Real-time location update.",
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.black,
                                        fontSize: SizeConfig.sW! * 4),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.appstore.image(
                            width: SizeConfig.sW! * 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Assets.images.playstore.image(
                            width: SizeConfig.sW! * 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.sW! * 10,
                  ),
                  const NewLetterSection(isMobile: true,),
                  SizedBox(
                    height: SizeConfig.sW! * 3,
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
