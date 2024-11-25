import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:portfolio_web_latest/domain/constants/app_themes/dark_theme_provider/dark_theme_provider.dart';
import 'package:portfolio_web_latest/domain/constants/responsive/responsive.dart';
import 'package:portfolio_web_latest/main.dart';
import 'package:provider/provider.dart';

import '../software_skills_contents.dart';

class SoftwareProgressBar extends StatelessWidget {
  SoftwareProgressBar({super.key});

  final SoftwareSkillsContent softSkills = SoftwareSkillsContent();

  @override
  Widget build(BuildContext context) {
    final isPage = MediaQuery.sizeOf(context);
    final isDesktop = ResponsiveApp.mqDesktop(context);
    final isDark = context.read<DarkThemeProvider>().themeValue;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: softSkills.softwareContent.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(left: isDesktop ? 50 : 12),
              child: Text(
                softSkills.softwareContent[index]["title"],
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : Colors.black),
              ),
            ),
            SizedBox(
              height: isPage.height * 0.009,
            ),
            GFProgressBar(
              animation: true,
              animationDuration: 900,
              width: isDesktop ? isPage.width * 0.6 : isPage.width * 0.9,
              progressHeadType: GFProgressHeadType.circular,
              //   margin: EdgeInsets.only(bottom: 6),
              alignment: MainAxisAlignment.spaceEvenly,
              percentage: softSkills.softwareContent[index]["per"],
              lineHeight: 11,
              progressBarColor:
                  //  GFColors.SUCCESS,
                  Theme.of(context).colorScheme.primary,
              child: Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  softSkills.softwareContent[index]["percent"],
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 9, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: isPage.height * 0.022,
            )
          ],
        );
      },
    );
  }
}
