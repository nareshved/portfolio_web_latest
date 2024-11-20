import 'package:flutter/material.dart';

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({
    super.key,
    required this.isMobile,
    required this.isDesktop,
  });

  final Widget isMobile;
  final Widget isDesktop;

  static bool mqMobile(BuildContext ctx) {
    return MediaQuery.sizeOf(ctx).height > MediaQuery.sizeOf(ctx).width;
  }

  static bool mqDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width > MediaQuery.sizeOf(context).height;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > constraints.maxHeight) {
          return isDesktop;
        } else {
          return isMobile;
        }
      },
    );
  }
}
