import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/domain/constants/responsive/responsive.dart';

import 'services_content_list.dart';

class MyServicesGrid extends StatelessWidget {
  MyServicesGrid({super.key});

  final MyServicesContentList servicesData = MyServicesContentList();

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveApp.mqDesktop(context);
    //  final isPage = MediaQuery.sizeOf(context);
    return isDesktop
        ? GridView.builder(
            shrinkWrap: true,
            itemCount: servicesData.myServicesContent.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 3 / 3,
                maxCrossAxisExtent: 240),
            itemBuilder: (context, index) {
              return ServiceCard(
                icon: servicesData.myServicesContent[index]["icon"],
                title: servicesData.myServicesContent[index]["title"],
                desc: servicesData.myServicesContent[index]["content"],
              );
            },
          )
        : GridView.builder(
            shrinkWrap: true,
            itemCount: servicesData.myServicesContent.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 3 / 3,
                maxCrossAxisExtent: 240),
            itemBuilder: (context, index) {
              return ServiceCard(
                icon: servicesData.myServicesContent[index]["icon"],
                title: servicesData.myServicesContent[index]["title"],
                desc: servicesData.myServicesContent[index]["content"],
              );
            },
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
    //  final isDesktop = ResponsiveApp.mqDesktop(context);
    return Card(
      shadowColor: Colors.black,
      elevation: 6,
      //  color: Theme.of(context).colorScheme.primaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: 210,
        height: 200,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              //     color: Theme.of(context).colorScheme.surface,
              color: Theme.of(context).colorScheme.primary,
              size: 36,
            ),
            SizedBox(height: isPage.height * 0.030),
            Text(title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  //         color: Colors.white,
                  fontWeight: FontWeight.bold,
                  //     fontSize: isDesktop ? 13 : 11
                )),
            SizedBox(height: isPage.height * 0.030),
            Flexible(
              child: Text(
                desc,
                textAlign: TextAlign.left,
                style: TextStyle(
                  //          color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
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
