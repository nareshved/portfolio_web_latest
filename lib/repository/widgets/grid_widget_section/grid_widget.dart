import 'package:flutter/material.dart';

import '../../../../domain/constants/responsive/responsive.dart';

class GridWidgetSection extends StatelessWidget {
  const GridWidgetSection({super.key, required this.contentList});

  final List<Map<String, dynamic>> contentList;

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveApp.mqDesktop(context);
    return isDesktop
        ? SizedBox(
            height: 350,
            child: GridView.builder(
              itemCount: contentList.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 240),
              itemBuilder: (context, index) {
                return ServiceCard(
                  icon: contentList[index]["icon"] ?? Icons.access_time_rounded,
                  title: contentList[index]["title"],
                  desc: contentList[index]["description"],
                );
              },
            ),
          )
        : SizedBox(
            height: 330,
            child: GridView.builder(
              itemCount: contentList.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 238),
              itemBuilder: (context, index) {
                return ServiceCard(
                  icon: contentList[index]["icon"] ?? Icons.access_time_rounded,
                  title: contentList[index]["title"],
                  desc: contentList[index]["description"],
                );
              },
            ),
          );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;

  const ServiceCard(
      {super.key, required this.icon, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    final isPage = MediaQuery.sizeOf(context);
    //  var isDark = context.read<DarkThemeProvider>().themeValue;
    final isDesktop = ResponsiveApp.mqDesktop(context);
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: 210,
        height: 200,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:
              isDesktop ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              // color: Theme.of(context).colorScheme.surface,
              color: Colors.white,
              size: 36,
            ),
            SizedBox(height: isPage.height * 0.030),
            Text(title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isDesktop ? 13 : 11)),
            Flexible(
              child: Text(
                desc,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  //  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 9,
                ),
              ),
            ),
            // SizedBox(height: 12),
            // GestureDetector(
            //   onTap: () {
            //     // Handle "View More" tap here
            //   },
            //   child: Text(
            //     'View More ➔',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 12,
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
