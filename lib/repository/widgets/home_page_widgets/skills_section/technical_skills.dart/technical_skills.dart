import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/heading_widget/heading_widget_title.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/skills_section/technical_skills.dart/technical_skills_content.dart';

import '../../../grid_widget_section/grid_widget.dart';

class TechnicalSkillsWidget extends StatelessWidget {
  TechnicalSkillsWidget({super.key});

  final TechnicalSkillsContent techSkills = TechnicalSkillsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Skills',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        HeadingWidgetTitle(headingName: TechnicalSkillsContent.teSkills),
        GridWidgetSection(
          contentList: techSkills.technicalContent,
        )
      ],
    );
  }
}
