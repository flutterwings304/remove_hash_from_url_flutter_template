import 'package:flutter/material.dart';

import 'main_page.dart';

class RouterClass {
  // Function which will route to different routes as per the name will change to different screen
  static Route? getRoute(RouteSettings settings) {
    Widget myWidget = MainPage(
      title: settings.name ?? "Default Page",
    );
    switch (settings.name) {
      case "/":
        myWidget = const MainPage(
          title: "First Page",
        );
        break;
      case "/home":
      case "/about":
      default:
        myWidget = MainPage(
          title: settings.name ?? "Default Page",// Name as title for next page 
        );
    }
    return MaterialPageRoute(builder: (context) => myWidget);
  }
}
