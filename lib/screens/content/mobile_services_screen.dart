// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../shared/utils/size_config.dart';

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
              margin: const EdgeInsets.only(top: 50.0),
              width: SizeConfig.sW! * 160,
              child: Column(
                children: [
                  Text(
                    "What i do",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                  ),
                  Text(
                    "My Services",
                    style: Theme.of(context).textTheme.headline5!,
                  ),
                  const SizedBox(
                    height: 50,
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
