// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
      return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1.15,
            margin: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
