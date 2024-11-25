import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/heading_widget/heading_widget_title.dart';

import 'services_grid.dart';

class MyServicesWidget extends StatelessWidget {
  const MyServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Services',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        HeadingWidgetTitle(headingName: 'What I Offer'),
        MyServicesGrid()
      ],
    );
  }
}
