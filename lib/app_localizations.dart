import 'package:flutter/material.dart';

class AppLocalizations {
  late final Locale? locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'email_label': 'Email',
      'email_hint': 'Enter your email',
      'password_label': 'Password',
      'password_hint': 'Enter your password',
      'email_validation': 'Please enter your email',
      'password_validation': 'Please enter your password',
      'login_button': 'Login',
      'signup_button': 'Sign Up',
    },
    'es': {
      'email_label': 'Correo electrónico',
      'email_hint': 'Ingrese su correo electrónico',
      'password_label': 'Contraseña',
      'password_hint': 'Ingrese su contraseña',
      'email_validation': 'Por favor ingrese su correo electrónico',
      'password_validation': 'Por favor ingrese su contraseña',
      'login_button': 'Iniciar sesión',
      'signup_button': 'Registrarse',
    },
  };

  String? translate(String key) {
    return _localizedValues[locale?.languageCode ?? 'en']?[key]; // Change here
  }
}
