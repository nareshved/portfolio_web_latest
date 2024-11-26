import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/heading_widget/heading_widget_title.dart';

import '../../../../domain/constants/responsive/responsive.dart';

// "A showcase of my work in Flutter development. From sleek UI designs to

class AppProjectsSec extends StatelessWidget {
  const AppProjectsSec({super.key});

  @override
  Widget build(BuildContext context) {
    //   final isMobile = ResponsiveApp.mqMobile(context);
    final isPage = MediaQuery.sizeOf(context);
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   width: 150,
            //   height: 150,
            //   color: Colors.blue,
            //   child: Center(child: Text("First Project")),
            // ),
            // Card(
            //   color: Theme.of(context).colorScheme.primaryContainer,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   child: Container(
            //     width: 245,
            //     height: 200,
            //     padding: EdgeInsets.all(16),
            //   ),
            // ),

            SizedBox(
                width: isPage.width * 0.9,
                //   height: 600,
                child: PortfolioProjects())
          ],
        ),
      ],
    );
  }
}

class PortfolioProjects extends StatelessWidget {
  const PortfolioProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Responsive Grid Layout for Projects
            LayoutBuilder(
              builder: (context, constraints) {
                //     final isMobile = constraints.maxWidth < 600;
                final isMobile = ResponsiveApp.mqMobile(context);
                final crossAxisCount = isMobile ? 1 : 3;

                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount, // 1 for mobile, 3 for PC
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1 / 1, // Adjust card proportions
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Embedded scrolling
                  itemCount: 6, // Number of projects
                  itemBuilder: (context, index) {
                    return _buildProjectCard(context, index, theme);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Project Card Widget
  Widget _buildProjectCard(BuildContext context, int index, ThemeData theme) {
    return GestureDetector(
      onTap: () {
        // Action on tap (e.g., navigate to project details)
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Tapped on Project ${index + 1}")),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        // color: theme.cardColor,
        color: Theme.of(context).colorScheme.primaryContainer,
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Project Image
            // Expanded(
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            //     child: Image.network(
            //       'https://via.placeholder.com/300x200', // Replace with actual image
            //       fit: BoxFit.cover,
            //       width: double.infinity,
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 8),

            // Project Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Project Title ${index + 1}",
                // style: theme.textTheme.headline6?.copyWith(
                //   fontWeight: FontWeight.bold,
                // ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 4),

            // Project Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Brief description of the project that highlights key features and technologies used.",
                // style: theme.textTheme.bodyText2?.copyWith(
                //   color: theme.textTheme.bodyText2?.color?.withOpacity(0.7),
                // ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
