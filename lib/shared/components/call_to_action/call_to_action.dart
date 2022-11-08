import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rtech_overview/shared/components/call_to_action/call_to_action_tablet_desktop.dart';

import 'call_to_action_mobile.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
