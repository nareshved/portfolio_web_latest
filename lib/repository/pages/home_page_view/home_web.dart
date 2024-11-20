import 'package:flutter/material.dart';

import '../../widgets/home_page_widgets/app_bar/app_bar.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    //  var isDark = context.read<DarkThemeProvider>().themeValue;
    //  final isDesktop = ResponsiveApp.mqDesktop(context);
       final isPage = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const AppBarWidgetPage(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(children: [
            
          ]),
        ),
      ),
    );
  }
}
