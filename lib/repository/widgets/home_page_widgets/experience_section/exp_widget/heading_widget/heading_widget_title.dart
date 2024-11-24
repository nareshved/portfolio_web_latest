import 'package:flutter/material.dart';

class HeadingWidgetTitle extends StatelessWidget {
  const HeadingWidgetTitle({super.key, required this.headingName});

  final String headingName;

  @override
  Widget build(BuildContext context) {
    final isPage = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Text(
          headingName,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        SizedBox(
          height: isPage.height * 0.040,
        ),
      ],
    );
  }
}
