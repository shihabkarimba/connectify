import 'dart:async';

import 'package:connectify/Core/Router/route.dart';
import 'package:connectify/Domain/Repository/LocalAuthRepo/local_auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      redirect();
    });
  }

  redirect() {
    final isLoggedIn = GetIt.I<LocalAuthRepository>().checkUser();
    if (isLoggedIn) {
      router.goNamed(Routes.connect.name);
    } else {
      router.goNamed(Routes.login.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
