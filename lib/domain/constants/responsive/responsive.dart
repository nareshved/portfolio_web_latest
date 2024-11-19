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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight > constraints.maxWidth) {
          return isMobile;
        } else {
          return isDesktop;
        }
      },
    );
  }
}
