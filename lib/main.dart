import 'package:flutter/material.dart';
import 'package:learning_path_1/responsive/mobile_screen_layout.dart';
import 'package:learning_path_1/responsive/responsive_layout_screen.dart';
import 'package:learning_path_1/responsive/web_screen_layout.dart';
import 'package:learning_path_1/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,

      ),
      home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}

