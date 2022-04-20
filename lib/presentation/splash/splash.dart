import 'package:flutter/material.dart';
import 'dart:async';

import '../../presentation/resources/color_maneger.dart';
import '../../presentation/resources/assets_maneger.dart';
import '../../presentation/resources/routes_maneger.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDalay() {
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDalay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManeger.primary,
      body: const Center(
        child: Image(
          image: AssetImage(ImageAssets.splashLogo),
        ),
      ),
    );
  }
}
