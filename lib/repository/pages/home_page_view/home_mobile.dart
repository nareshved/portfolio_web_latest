import 'package:flutter/material.dart';

import '../../widgets/home_page_widgets/app_bar/app_bar.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [AppBarWidgetPage()],
      ),
    );
  }
}
