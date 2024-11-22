import 'package:flutter/material.dart';

import '../../../../../domain/constants/responsive/responsive.dart';

class ExperienceSecWidget extends StatelessWidget {
  const ExperienceSecWidget(
      {super.key,
      required this.expSecTitle,
      required this.expSecIcon,
      required this.expTitle,
      required this.expDes,
      required this.expTime});

  final String expSecTitle, expTitle, expDes, expTime;
  final IconData expSecIcon;

  @override
  Widget build(BuildContext context) {
    final isPage = MediaQuery.sizeOf(context);
    final isDesktop = ResponsiveApp.mqDesktop(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment:
              isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            Icon(expSecIcon),
            SizedBox(
              width: isPage.width * 0.007,
            ),
            Text(
              expSecTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
        SizedBox(
          height: isPage.height * 0.025,
        ),
        Text(
          expTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          expDes,
          style:
              Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 13),
        ),
        SizedBox(
          height: isPage.height * 0.015,
        ),
        Text(
          expTime,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}




        // Text(
        //   expTitle,
        //   style: Theme.of(context).textTheme.bodyMedium,
        // ),
        // Text(
        //   expDes,
        //   style:
        //       Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 13),
        // ),
        // SizedBox(
        //   height: isPage.height * 0.015,
        // ),
        // Text(
        //   expTime,
        //   style: Theme.of(context).textTheme.labelMedium!.copyWith(
        //       color: Theme.of(context).colorScheme.primary,
        //       fontWeight: FontWeight.bold),
        // ),
