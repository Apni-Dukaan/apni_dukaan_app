import 'package:apni_dukaan_app/views/auth/merchant_signin_screen.dart';
import 'package:apni_dukaan_app/views/auth/signin_screen.dart';
import 'package:apni_dukaan_app/views/auth/signup_screen.dart';
import 'package:apni_dukaan_app/views/home/home_screen.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _routerDelegate = BeamerRouterDelegate(
    initialPath: '/home',
    locationBuilder: SimpleLocationBuilder(
      routes: {
        '/signin': (context) => SignInScreen(),
        '/signin/merchant_signin': (context) => MerchantSignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen()
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        ScreenUtil.init(constrains);
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme:
                GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          backButtonDispatcher:
              BeamerBackButtonDispatcher(delegate: _routerDelegate),
          routerDelegate: _routerDelegate,
          routeInformationParser: BeamerRouteInformationParser(),
        );
      },
    );
  }
}
