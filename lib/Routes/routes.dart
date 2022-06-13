import 'package:flutter/material.dart';
import 'package:zeropay/Pages/repayment_page_1.dart';
import 'package:zeropay/Routes/router_names.dart';

import '../Pages/frame_80599.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case repaymentPageRoute:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: const RepaymentPage1(),
      );
    case frame80599Route:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: const Frame80599(),
      );
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child:
                        Text('There was a technical error ${settings.name}')),
              ));
  }
}

PageRoute _pageRoute({String? routeName, Widget? viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(name: routeName), builder: (_) => viewToShow!);
}
