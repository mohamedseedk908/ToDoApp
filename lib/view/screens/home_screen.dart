import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          Center(
            child: Text('toDoApp'.tr()),
          ),
          IconButton(
              onPressed: () {
                print(context.deviceLocale.toString());
                if(context.locale.toString()=='en'){
                  context.setLocale(Locale('ar'));
                }else{
                  context.setLocale(Locale('en'));
                }
              },
              icon: Icon(Icons.translate))
        ],
      ),
    );
  }
}
