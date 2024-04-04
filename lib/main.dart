import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_application_4/login_signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: LoginSignUpScreen(),
    );
  }
}
