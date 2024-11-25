import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/experirence_section.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/skills_section/programming_skills/programming_skills.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/skills_section/technical_skills.dart/technical_skills.dart';
import '../../widgets/home_page_widgets/app_bar/app_bar.dart';
import '../../widgets/home_page_widgets/info_section/info_section.dart';
import '../../widgets/home_page_widgets/my_services/services.dart';
import '../../widgets/home_page_widgets/skills_section/software_skills/software_skills.dart';

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
            MyServicesWidget(),
            SizedBox(height: isPage.height * 0.025),
            ProgrammingSkills(),
            SizedBox(height: isPage.height * 0.025),
            SoftwareSkills(),
            SizedBox(height: isPage.height * 0.025),
            TechnicalSkillsWidget(),
          ]),
        ),
      ),
    );
  }
}
