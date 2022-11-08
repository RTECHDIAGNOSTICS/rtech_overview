import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:rtech_overview/screens/home.dart';

import 'gen/theme/theme_provider.dart';

// int? isviewed;
Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RTech());
}

class RTech extends StatelessWidget {
  static String title = "RentalStop";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ],
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
              themeMode: themeProvider.themeMode,
              theme: MyThemes.lightTheme,
              darkTheme: MyThemes.lightTheme,
              initialRoute: Home.id,
              debugShowCheckedModeBanner: false,
              routes: {
                Home.id: (context) => const Home(),
              });
        },
      );
}
