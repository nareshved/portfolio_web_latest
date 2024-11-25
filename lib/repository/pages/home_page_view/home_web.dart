import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/experirence_section.dart';
import '../../widgets/home_page_widgets/app_bar/app_bar.dart';
import '../../widgets/home_page_widgets/info_section/info_section.dart';
import '../../widgets/my_services/services.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final isPage = MediaQuery.sizeOf(context);
    //  var isDark = context.read<DarkThemeProvider>().themeValue;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const AppBarWidgetPage(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(children: [
            const InfoSection(),
            SizedBox(height: isPage.height * 0.025),
            const ExperienceSection(),
            SizedBox(height: isPage.height * 0.025),
            MyServicesWidget()
          ]),
        ),
      ),
    );
  }
}
