import 'package:flutter/material.dart';
import 'app_localizations.dart';

class LoginSignUpScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login and Sign Up'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.lightBlue],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)?.translate('email_label') ?? 'Email',
                    hintText: AppLocalizations.of(context)?.translate('email_hint') ?? 'Enter your email',
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return AppLocalizations.of(context)?.translate('email_validation') ?? 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)?.translate('password_label') ?? 'Password',
                    hintText: AppLocalizations.of(context)?.translate('password_hint') ?? 'Enter your password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return AppLocalizations.of(context)?.translate('password_validation') ?? 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: Text(AppLocalizations.of(context)?.translate('login_button') ?? 'Login'),
                ),
                const SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: Text(AppLocalizations.of(context)?.translate('signup_button') ?? 'Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text('EN'),
            ),
            const SizedBox(width: 8.0),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text('ES'),
            ),
          ],
        ),
      ),
    );
  }
}