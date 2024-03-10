// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//pages
import './pages/splash_page.dart';
import './pages/login_page.dart';
import './pages/home_page.dart';
//packages
import 'package:firebase_analytics/firebase_analytics.dart';

//services
import './services/navigation_service.dart';

//prividers
import './providers/authentication_provider.dart';

void main() {
  runApp(SplashPage(
      key: UniqueKey(),
      OnInitializationComplete: () {
        runApp(const MainApp());
      }));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthenticationProvider>(
            create: (BuildContext context) => AuthenticationProvider()),
      ],
      child: MaterialApp(
        navigatorKey: NavigationSevice.navigatorKey,
        routes: {
          '/login': (BuildContext context) => const LoginPage(),
          '/home': (BuildContext context) => const HomePage()
        },
        initialRoute: '/login',
        debugShowCheckedModeBanner: false,
        title: "ChatApp",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(36, 35, 49, 1)),
          scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color.fromRGBO(30, 29, 37, 1),
          ),
        ),
      ),
    );
  }
}
