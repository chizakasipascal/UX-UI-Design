import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ux_ui_design/src/views/screens/screens.dart';
import 'constants/app_theme.dart';
import 'constants/routes.dart';
import 'constants/strings.dart';

class UIxDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: Strings.appName,
      home: HomeScreen(),
      routes: Routes.routes,
    );
  }
}
