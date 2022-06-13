import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zeropay/Pages/repayment_page_1.dart';
import 'package:zeropay/Routes/routes.dart';
import 'package:zeropay/Services/navigation_service.dart';
import 'package:zeropay/locator.dart';
import 'package:zeropay/widgets/top_bottom_bar_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Zeropay',
        navigatorKey: locator<NavigationService>().navigationKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            shadowColor: Colors.black,
            appBarTheme: const AppBarTheme(
              color: Colors.white,
              elevation: 0, // This removes the shadow from all App Bars.
            )),
        onGenerateRoute: generateRoute,
        home: BottomBar(
            key: key,
            title: 'Repayments',
            body: RepaymentPage1(
              key: key,
            )));
  }
}

// Stateful widget created
