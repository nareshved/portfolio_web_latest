import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDesktop = ResponsiveApp.mqDesktop(context);
    final isPage = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Journey",
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

// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             const Icon(Icons.business_center),
//             SizedBox(
//               width: isPage.width * 0.007,
//             ),
//             Text(
//               "Experience",
//               style: Theme.of(context)
//                   .textTheme
//                   .titleMedium!
//                   .copyWith(fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//         Text("ghbnjmkl hai")
//       ],
//     ),
//     Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             const Icon(Icons.school_rounded),
//             SizedBox(
//               width: isPage.width * 0.007,
//             ),
//             Text(
//               "Knowledge",
//               style: Theme.of(context)
//                   .textTheme
//                   .titleMedium!
//                   .copyWith(fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//         Text("kaisa hai")
//       ],
//     ),
//   ],
// )
