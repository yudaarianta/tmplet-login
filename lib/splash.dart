
import 'package:fluter_kadek/screens/home/auth/login.dart';
import 'package:fluter_kadek/screens/home/home.dart';
import 'package:fluter_kadek/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _chekUserSementara(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:wAppLoading()
    );
  }

  void _chekUserSementara(bool user) async {
    await Future.delayed(const Duration(seconds: 2));

    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => user ? const HOME() : const Login()));
  }
}
