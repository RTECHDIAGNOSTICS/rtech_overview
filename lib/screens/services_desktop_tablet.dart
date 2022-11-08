// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../shared/utils/onHover.dart';
import '../shared/utils/size_config.dart';

class ServicesPageDesktopTab extends StatefulWidget {
  const ServicesPageDesktopTab({Key? key}) : super(key: key);

  @override
  _ServicesPageDesktopTabState createState() => _ServicesPageDesktopTabState();
}

class _ServicesPageDesktopTabState extends State<ServicesPageDesktopTab> {
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
              margin: const EdgeInsets.only(top: 50.0),
              width: SizeConfig.sW! * 160,
              child: Column(
                children: [
                  //for DesktopView //
                  ///
                  ///
                  sizingInformation.isDesktop
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          ],
                        )
                      :

                      ///for Tablet Vieww
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          ],
                        ),
                  Container(
                    margin: const EdgeInsets.only(top: 120.0, bottom: 100),
                    width: SizeConfig.sW! * 160,
                    child: Column(
                      children: [
                        //For Desktop View
                        ///
                        ///
                        sizingInformation.isDesktop
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                ],
                              )
                            //for Tablet View
                            : SizedBox()
                      ],
                    ),
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
