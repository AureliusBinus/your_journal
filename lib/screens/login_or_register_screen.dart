import 'package:flutter/material.dart';
import 'package:asset_tracker/screens/login_screen.dart';
import 'package:asset_tracker/screens/register_screen.dart';

class LoginOrRegisterScreen extends StatefulWidget {
  const LoginOrRegisterScreen({super.key});

  @override
  State<LoginOrRegisterScreen> createState() => _LoginOrRegisterScreenState();
}

class _LoginOrRegisterScreenState extends State<LoginOrRegisterScreen> {
  bool showLoginPage = true;

  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        onTap: toggleScreen,
      );
    } else {
      return RegisterScreen(
        onTap: toggleScreen,
      );
    }
  }
}