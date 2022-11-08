// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../gen/theme/change_theme_button_widget.dart';
import '../gen/theme/theme_provider.dart';
import '../shared/utils/constants.dart';
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
      return Stack(
        children: [
          SizedBox(
            width: SizeConfig.sW! * 160,
            child: sizingInformation.isDesktop
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          RichText(
      text: TextSpan(
          text: "The easiest and reliable way to get your ",
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: "TRUCK back on the road",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
             TextSpan(
              text: " back on the road",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  
                  fontWeight: FontWeight.bold),
            )
          ]),
    ),
    const SizedBox(height: 10,),
                           Text(
          "Download the  Rtech app",
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontWeight: FontWeight.w600, fontSize: 20),
        ),
                        ],
                      ),
                    ],
                  ) // for tablet view
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    ],
                  ),
          ),
        ],
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
