import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/heading_widget/heading_widget_title.dart';

// "A showcase of my work in Flutter development. From sleek UI designs to

class AppProjectsSec extends StatelessWidget {
  const AppProjectsSec({super.key});

  @override
  Widget build(BuildContext context) {
    //   final isMobile = ResponsiveApp.mqMobile(context);
    //  final isPage = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Text(
          'Explore My Journey Through Projects.',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        HeadingWidgetTitle(headingName: "Projects"),
        // Card(
        //   elevation: 10,
        //   child: Container(
        //     width: 260,
        //     height: 190,
        //     decoration: BoxDecoration(
        //         // color: Theme.of(context).colorScheme.surface,
        //         borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(32),
        //             bottomRight: Radius.circular(32),
        //             topRight: Radius.circular(32))),
        //   ),
        // ),

        SizedBox(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adds spacing between items
                  child: buildCard(
                    context,
                    icon: Icons.design_services,
                    title: "Graphic Design",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dictum.",
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildCard(
  BuildContext context, {
  required IconData icon,
  required String title,
  required String description,
}) {
  return Container(
    width: 290,
    //  height: 320,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(34),
        bottomRight: Radius.circular(34),
        topRight: Radius.circular(34),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          spreadRadius: 5,
          offset: Offset(0, 5),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
          ),
        ),
      ],
    ),
  );
}
