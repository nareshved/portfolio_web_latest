import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/info_section/info_section.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/skills_section/programming_skills/programming_skills.dart';

import '../../widgets/home_page_widgets/experience_section/experirence_section.dart';
import '../../widgets/home_page_widgets/my_services/services.dart';
import '../../widgets/home_page_widgets/projects_section/app_projects.dart';
import '../../widgets/home_page_widgets/skills_section/software_skills/software_skills.dart';
import '../../widgets/home_page_widgets/skills_section/technical_skills.dart/technical_skills.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final isPage = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            children: [
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
              SizedBox(height: isPage.height * 0.025),
              AppProjectsSec(),
              SizedBox(height: isPage.height * 0.025),
            ],
          ),
        ),
      ),
    );
  }
}
