import 'package:flutter/material.dart';

class ExperienceSecWidget extends StatelessWidget {
  const ExperienceSecWidget(
      {super.key,
      //   required this.expSecTitle,
      //   required this.expSecIcon,
      required this.expTitle,
      required this.expDes,
      required this.expTime});

  final String expTitle, expDes, expTime;
  // final IconData expSecIcon;

  @override
  Widget build(BuildContext context) {
    final isPage = MediaQuery.sizeOf(context);
    //  final isDesktop = ResponsiveApp.mqDesktop(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //   const Icon(Icons.first_page_rounded),
        Column(
          children: [
            Container(
              height: 11,
              width: 11,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary),
            ),
            Container(
              height: 45,
              width: 2,
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ),

        SizedBox(
          width: isPage.width * 0.022,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                expTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                expDes,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 13),
              ),
              SizedBox(
                height: isPage.height * 0.015,
              ),
              Text(
                expTime,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// SizedBox(
//             height: isPage.height * 0.025,
//           ),
//           Text(
//             expTitle,
//             style: Theme.of(context).textTheme.bodyMedium,
//           ),
//           Text(
//             expDes,
//             style: Theme.of(context)
//                 .textTheme
//                 .labelMedium!
//                 .copyWith(fontSize: 13),
//           ),
//           SizedBox(
//             height: isPage.height * 0.015,
//           ),
//           Text(
//             expTime,
//             style: Theme.of(context).textTheme.labelMedium!.copyWith(
//                 color: Theme.of(context).colorScheme.primary,
//                 fontWeight: FontWeight.bold),
//           )

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
