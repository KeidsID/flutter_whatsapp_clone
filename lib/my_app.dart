import 'package:core/core.dart';
import 'package:core/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:k_whatsapp_clone/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: kTheme,
      darkTheme: kDarkTheme,
      home: const HomePage(),
    );
  }
}
