// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:rtech_overview/screens/services_desktop_tablet.dart';
import 'package:rtech_overview/shared/utils/app_colors.dart';

import '../gen/assets.gen.dart';
import '../shared/components/nav_drawer/nav_drawer.dart';
import '../shared/components/navbar/nav_bar_item.dart';
import '../shared/components/navbar/nav_bar_logo.dart';
import '../shared/utils/size_config.dart';
import 'HomePage.dart';
import 'about_screen.dart';
import 'content/mobile_about_screen.dart';
import 'content/mobile_services_screen.dart';
import 'content/moblie_homePage.dart';

class Home extends StatefulWidget {
  static String id = 'Home';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  ScrollController? controller;

  final PageController pageController = PageController();
  final ScrollController mobileController = ScrollController();
  AnimationController? _drawerController;
  double drawerOffset = 0;

  @override
  void initState() {
    _drawerController = AnimationController(
        vsync: this,
        lowerBound: 0,
        upperBound: 100,
        duration: const Duration(milliseconds: 1500));
    _drawerController!.addListener(() {
      setState(() {
        drawerOffset = -_drawerController!.value;
      });
    });
    mobileController.addListener(() {
      if (mobileController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _drawerController!.forward();
        });
      } else if (mobileController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _drawerController!.reverse();
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _drawerController!.dispose();
    mobileController.dispose();
    super.dispose();
  }

  bool hideDrawer = false;
  List<Widget> sponsors = [];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    sponsors = [
      Assets.images.maxxforceImg.image(
        height: SizeConfig.sW! * 7,
        width: SizeConfig.sW! * 7,
      ),
      Assets.images.mackImg.image(
        height: SizeConfig.sW! * 7,
        width: SizeConfig.sW! * 7,
      ),
      Assets.images.cumminsImg.image(
        height: SizeConfig.sW! * 7,
        width: SizeConfig.sW! * 7,
      ),
      Assets.images.hinoImg.image(
        height: SizeConfig.sW! * 7,
        width: SizeConfig.sW! * 7,
      ),
      Assets.images.paccarImg.image(
        height: SizeConfig.sW! * 7,
        width: SizeConfig.sW! * 7,
      ),
      Assets.images.catImg.image(
        height: SizeConfig.sW! * 7,
        width: SizeConfig.sW! * 7,
      ),
      Assets.images.volvoImg.image(
        height: SizeConfig.sW! * 7,
        width: SizeConfig.sW! * 7,
      ),
      Assets.images.detroitImg.image(
        height: SizeConfig.sW! * 7,
        width: SizeConfig.sW! * 7,
      ),
    ];

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: AppColors.white,
        endDrawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? AppBar(
                centerTitle: true,
                iconTheme: IconThemeData(
                    size: SizeConfig.sW! * 8, color: AppColors.black),
                backgroundColor: AppColors.bgColor,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.rTechLogoBlack.image(
                      width: SizeConfig.sW! * 8,
                      height: SizeConfig.sW! * 8,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "R Tech\nDiagnostics",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.bold,
                            height: 1,
                            fontSize: SizeConfig.sW! * 3.5,
                          ),
                    ),
                  ],
                ),
              )
            : AppBar(
                toolbarHeight: 80,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile
                    ? const Text("RTech")
                    : Container(
                        width: double.infinity,
                        color: AppColors.bgColor,
                        padding: EdgeInsets.only(
                          top: SizeConfig.sW! * 30,
                          bottom: SizeConfig.sW! * 30,
                          left: sizingInformation.isTablet
                              ? SizeConfig.sW! * 4
                              : SizeConfig.sW! * 7,
                          right: sizingInformation.isTablet
                              ? SizeConfig.sW! * 4
                              : SizeConfig.sW! * 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Expanded(child: NavBarLogo()),
                            Expanded(
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    NavBarItem(
                                        text: "Products",
                                        function: () {
                                          pageController.animateTo(
                                              SizeConfig.sH!,
                                              duration: const Duration(
                                                  milliseconds: 1500),
                                              curve: Curves.easeIn);
                                        }
                                        //=> Scrollable.ensureVisible(
                                        //     dataKey!.currentContext!,
                                        //     duration: Duration(seconds: 2),
                                        //     curve: Curves.easeIn),
                                        ),
                                    SizedBox(
                                      width: SizeConfig.sW! * 5,
                                    ),
                                    NavBarItem(
                                        text: "Support",
                                        function: () {
                                          pageController.animateTo(
                                              sizingInformation.isDesktop
                                                  ? SizeConfig.sH! * 90
                                                  : SizeConfig.sH! * 150,
                                              duration: const Duration(
                                                  milliseconds: 1500),
                                              curve: Curves.easeIn);
                                        }
                                        // => Scrollable.ensureVisible(
                                        //     dataKey1!.currentContext!,
                                        //     duration: Duration(seconds: 2),
                                        //     curve: Curves.easeIn),
                                        ),
                                    SizedBox(
                                      width: SizeConfig.sW! * 5,
                                    ),
                                    NavBarItem(
                                        text: "Cities",
                                        function: () {
                                          pageController.animateTo(
                                              sizingInformation.isDesktop
                                                  ? SizeConfig.sH! * 170
                                                  : SizeConfig.sH! * 280,
                                              duration: const Duration(
                                                  milliseconds: 1500),
                                              curve: Curves.easeIn);
                                        }
                                        // => Scrollable.ensureVisible(
                                        //     dataKey2!.currentContext!,
                                        //     duration: Duration(seconds: 2),
                                        //     curve: Curves.easeIn),
                                        ),
                                  ]),
                            ),
                          ],
                        )),
              ),
        body: Stack(
          children: [
            Container(
              color: Colors.transparent,
              child: ScreenTypeLayout(
                mobile: SingleChildScrollView(
                  controller: mobileController,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FadeInLeft(
                          duration: const Duration(milliseconds: 1500),
                          child: const MobileHomePage()),
                      SponsorWidget(
                        mobile: true,
                        sponsors: sponsors,
                        width: SizeConfig.sW! * 12,
                      ),
                      FadeInRight(
                        duration: const Duration(milliseconds: 2500),
                        child: const MobileAboutScreen(),
                      ),
                      const CtaWidget(
                        isMobile: true,
                      ),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 2500),
                        child: const MobileServicesScreen(),
                      ),
                      const FooterWidget(
                        isMobile: true,
                      ),
                    ],
                  ),
                ),
                tablet: SizedBox(
                  child: ListView(
                    controller: pageController,
                    scrollDirection: Axis.vertical,
                    children: [
                      FadeInLeft(
                          duration: const Duration(milliseconds: 1500),
                          child: const HomePage()),
                      SizedBox(
                        height: SizeConfig.sW! * 5,
                      ),
                      SponsorWidget(
                        sponsors: sponsors,
                        width: SizeConfig.sW! * 20,
                      ),
                      FadeInRight(
                        duration: const Duration(milliseconds: 2500),
                        child: const AboutScreen(),
                      ),
                      const CtaWidget(),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 2500),
                        child: const ServicesPageDesktopTab(),
                      ),
                      const FooterWidget(),
                    ],
                  ),
                ),
                desktop: ListView(
                  controller: pageController,
                  scrollDirection: Axis.vertical,
                  children: [
                    FadeInLeftBig(
                        duration: const Duration(milliseconds: 1500),
                        child: const HomePage()),
                    SponsorWidget(
                      sponsors: sponsors,
                      width: SizeConfig.sW! * 12,
                    ),
                    FadeInRightBig(
                      duration: const Duration(milliseconds: 2500),
                      child: const AboutScreen(),
                    ),
                    const CtaWidget(),
                    FadeInLeftBig(
                      duration: const Duration(milliseconds: 2500),
                      child: const ServicesPageDesktopTab(),
                    ),
                    const FooterWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SponsorWidget extends StatelessWidget {
  const SponsorWidget({
    Key? key,
    required this.sponsors,
    required this.width, this.mobile = false,
  }) : super(key: key);

  final List<Widget> sponsors;
  final double width;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: SizeConfig.sW! * 20,
        child: ListView.separated(
          itemCount: sponsors.length,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal:mobile ?  SizeConfig.sW! * 8 : SizeConfig.sW! * 5,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return SizedBox(
                // height: SizeConfig.sW! * 10,
                // width: width,
                child: sponsors[index]);
          }),
          separatorBuilder: (context, index) => SizedBox(
            width:mobile ?  SizeConfig.sW! * 12 :  SizeConfig.sW! * 8,
          ),
        ));
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
    this.isMobile = false,
  }) : super(key: key);
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Container(
            padding: EdgeInsets.only(
                top: SizeConfig.sW! * 10,
                bottom: SizeConfig.sW! * 10,
                right: SizeConfig.sW! * 5,
                left: SizeConfig.sW! * 5),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Assets.svgs.instagramSvg.svg(
                      height: SizeConfig.sW! * 3,
                      width: SizeConfig.sW! * 3,
                    ),
                    SizedBox(
                      width: SizeConfig.sW! * 2,
                    ),
                    Assets.svgs.twitterSvg.svg(
                      height: SizeConfig.sW! * 3,
                      width: SizeConfig.sW! * 3,
                    ),
                    SizedBox(
                      width: SizeConfig.sW! * 2,
                    ),
                    Assets.svgs.linkedInSvg.svg(
                      height: SizeConfig.sW! * 3,
                      width: SizeConfig.sW! * 3,
                    ),
                  ],
                ),
                Text(
                  'Copyrigh Rtech Diagonistics 2022',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.white,
                        fontSize: SizeConfig.sW! * 2,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.only(
                top: SizeConfig.sW! * 3,
                bottom: SizeConfig.sW! * 3,
                right: SizeConfig.sW! * 5,
                left: SizeConfig.sW! * 5),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Assets.svgs.instagramSvg.svg(
                      height: SizeConfig.sW! * 1.8,
                      width: SizeConfig.sW! * 1.8,
                    ),
                    SizedBox(
                      width: SizeConfig.sW! * 1,
                    ),
                    Assets.svgs.twitterSvg.svg(
                      height: SizeConfig.sW! * 1.8,
                      width: SizeConfig.sW! * 1.8,
                    ),
                    SizedBox(
                      width: SizeConfig.sW! * 1,
                    ),
                    Assets.svgs.linkedInSvg.svg(
                      height: SizeConfig.sW! * 1.8,
                      width: SizeConfig.sW! * 1.8,
                    ),
                  ],
                ),
                Text(
                  'Copyrigh Rtech Diagonistics 2022',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.white,
                        fontSize: SizeConfig.sW! * 1,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
          );
  }
}

class CtaWidget extends StatelessWidget {
  const CtaWidget({
    Key? key,
    this.isMobile = false,
  }) : super(key: key);

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Padding(
          padding:  EdgeInsets.all(SizeConfig.sW! * 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(
                height:  SizeConfig.sW! * 2,
              ),
              Text(
                "Do you provide any\nof the above services ?",
                textAlign: TextAlign.center,
                style: GoogleFonts.kanit(
                        fontWeight: FontWeight.w700,
                        height: 1,
                        color: AppColors.primary,
                        fontSize: SizeConfig.sW! * 5.5,),
              ),
               SizedBox(
                height:  SizeConfig.sW! * 2,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: SizeConfig.sW! * 8),
                child: Text(
                          "We have a community of service providers where updates about our products and services  are shared and connections are made.",
                  textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                  fontSize: SizeConfig.sW! * 3.4),
                        ),
              ),
                      
               SizedBox(
                height:  SizeConfig.sW! *3,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.sW! * 4,
                      horizontal: SizeConfig.sW! * 4),
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: AppColors.primary),
                    
                  ),
                ),
                child: Text(
                  'Join us',
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: SizeConfig.sW! * 3.5,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        )
        : Container(
          margin: EdgeInsets.symmetric(horizontal: SizeConfig.sW! * 10),
          height: SizeConfig.sW! * 15.4,
          // padding: EdgeInsets.all(SizeConfig.sW! * 6),
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  "Do you provide any\nof the above services ?",
                  style: GoogleFonts.kanit(
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                          fontSize: SizeConfig.sW! * 2.6,),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                          "We have a community of service providers where updates about our products and services  are shared and connections are made.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                  fontSize: SizeConfig.sW! * 1.4),
                        ),
              ),
                      
               SizedBox(
                width:  SizeConfig.sW! * 10.4,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.sW! * 2,
                      horizontal: SizeConfig.sW! * 2),
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: AppColors.primary),
                    
                  ),
                ),
                child: Text(
                  'Join us',
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: SizeConfig.sW! * 1.7,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        );
  }
}
