import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/heading_widget/heading_widget_title.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/skills_section/programming_skills/programming_skills_contents.dart';

import '../../../grid_widget_section/grid_widget.dart';

class ProgrammingSkills extends StatelessWidget {
  ProgrammingSkills({super.key});

  final ProgrammingSkillsContents pSkills = ProgrammingSkillsContents();

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
        HeadingWidgetTitle(
            headingName: ProgrammingSkillsContents.programmingSkill),
        GridWidgetSection(
          contentList: pSkills.programmingContent,
        )
      ],
    );
  }
}
