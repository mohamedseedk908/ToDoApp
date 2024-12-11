import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo/todoapp.dart';


////// Generating local key
//flutter pub run easy_localization:generate -S assets/translations -O lib/view_model/utlis/ -o locale_keys.g.dart -f keys

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        child: const ToDoApp(),
    ),
  );
}


