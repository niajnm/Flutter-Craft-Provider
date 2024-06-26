import 'package:flutter/material.dart';
import 'package:flutter_craft/app/core/route/route_paths.dart';
import 'package:flutter_craft/app/module/home_page.dart';

class RouteServices {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name)
  {
      // case RoutePaths.onboard:
      //   return NoAnimationPageRoute(
      //     builder: (_) => UserOnBoardingPage(),
      //     settings: settings,
      //   );

      
      case RoutePaths.homePage:
        return NoAnimationPageRoute(
          builder: (_) => HomePage(),
          settings: settings,
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Page Not Found"),
        ),
      );
    });
  }
}

class NoAnimationPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationPageRoute(
      {required WidgetBuilder builder, required RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}
