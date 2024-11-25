import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/info_section/info_section.dart';

import '../../widgets/home_page_widgets/experience_section/experirence_section.dart';
import '../../widgets/my_services/services.dart';

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
              MyServicesWidget()
            ],
          ),
        ),
      ),
    );
  }
}
