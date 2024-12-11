import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo/view/screens/splash_screen.dart';
import 'package:todo/view_model/utlis/locale_keys.g.dart';
import 'package:todo/view_model/utlis/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.toDoApp.tr(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sunny),
          ),
          IconButton(
            onPressed: () { if (context.locale.toString() == 'en') {
              context.setLocale(Locale('ar'));
            } else {
              context.setLocale(Locale('en'));
            }},
            icon: Icon(Icons.translate),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list_rounded),
          ),
          IconButton(
            onPressed: () {Navigation.push(context, const SplashScreen());},
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HomeScreen")
          ],
        ),
      ),
    );
  }
}
