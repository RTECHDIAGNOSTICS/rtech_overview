import 'package:flutter/material.dart';
import 'package:rtech_overview/shared/utils/app_colors.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    );
  }
}
