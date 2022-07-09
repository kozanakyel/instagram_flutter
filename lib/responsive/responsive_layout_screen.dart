import 'package:flutter/material.dart';
import 'package:learning_path_1/responsive/web_screen_layout.dart';
import 'package:learning_path_1/utils/dimensions.dart';

import 'mobile_screen_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (context, BoxConstraints constraints) {
      return constraints.maxWidth > webScreenSize
          ? const WebScreenLayout()
          : const MobileScreenLayout();
    });
  }
}
