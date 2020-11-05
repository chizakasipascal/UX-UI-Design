import 'package:flutter/material.dart';
import 'package:ux_ui_design/src/views/screens/screens.dart';

class Routes {
  Routes._();

  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomeScreen(),
  };
}
