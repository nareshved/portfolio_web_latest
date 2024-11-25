import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/heading_widget/heading_widget_title.dart';

import 'software_bar/progress_bar.dart';
import 'software_skills_contents.dart';

class SoftwareSkills extends StatelessWidget {
  SoftwareSkills({super.key});

  final SoftwareSkillsContent softwareSkill = SoftwareSkillsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadingWidgetTitle(headingName: SoftwareSkillsContent.softwareSkills),
        SoftwareProgressBar(),
      ],
    );
  }
}
