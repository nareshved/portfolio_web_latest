import 'package:flutter/material.dart';
import '../../widgets/home_page_widgets/app_bar/app_bar.dart';
import '../../widgets/home_page_widgets/info_section/info_section.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    //   final isPage = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const AppBarWidgetPage(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(children: const [InfoSection()]),
        ),
      ),
    );
  }
}
