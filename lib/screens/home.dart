import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rtech_overview/screens/services_desktop_tablet.dart';
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

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? null
            : AppBar(
                toolbarHeight: 80,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile
                    ? const Text("RTech")
                    : Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.sW! * 1,
                          bottom: SizeConfig.sW! * 1,
                          left: sizingInformation.isTablet
                              ? SizeConfig.sW! * 3
                              : SizeConfig.sW! * 7,
                          right: sizingInformation.isTablet
                              ? 0
                              : SizeConfig.sW! * 7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const NavBarLogo(),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                NavBarItem(
                                    text: "Products",
                                    function: () {
                                      pageController.animateTo(SizeConfig.sH!,
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
                                  width: SizeConfig.sW! * 2,
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
                                  width: SizeConfig.sW! * 2,
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
                              ]
                            ),
                          ],
                        )),
              ),
        body: Stack(
          children: [
            Container(
              color: Colors.transparent,
              margin: EdgeInsets.only(
                top: SizeConfig.sW! * 1,
                bottom: SizeConfig.sW! * 1,
                left: sizingInformation.isMobile
                    ? 0
                    : sizingInformation.isTablet
                        ? SizeConfig.sW! * 4
                        : SizeConfig.sW! * 8,
                right: sizingInformation.isMobile
                    ? 0
                    : sizingInformation.isTablet
                        ? SizeConfig.sW! * 4
                        : SizeConfig.sW! * 8,
              ),
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
                      FadeInRight(
                        duration: const Duration(milliseconds: 2500),
                        child: const MobileAboutScreen(),
                      ),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 2500),
                        child: const MobileServicesScreen(),
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
                      FadeInRight(
                        duration: const Duration(milliseconds: 2500),
                        child: const AboutScreen(),
                      ),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 2500),
                        child: const ServicesPageDesktopTab(),
                      ),
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
                    FadeInRightBig(
                      duration: const Duration(milliseconds: 2500),
                      child: const AboutScreen(),
                    ),
                    FadeInLeftBig(
                      duration: const Duration(milliseconds: 2500),
                      child: const ServicesPageDesktopTab(),
                    ),
                    
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
