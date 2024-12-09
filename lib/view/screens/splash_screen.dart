import 'package:flutter/material.dart';
import 'package:todo/view_model/utlis/app_assets.dart';

import '../../view_model/utlis/navigation.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool visible=false;
  @override
  void initState(){
    Future.delayed(const Duration(microseconds: 400),(){setState(() {
      visible=true;
    });});
    Future.delayed(const Duration(seconds: 2),(){
      Navigation.pushAndRemove(context, const HomeScreen());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        duration: const Duration(seconds: 2),
        opacity: visible ?0:1,
        child: Center(
          child: Image.asset(AppAssets.logo),
        ),
      ),
    );
  }
}
