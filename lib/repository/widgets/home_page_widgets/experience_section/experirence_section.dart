import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/experience_wid.dart';

import '../../../../domain/constants/responsive/responsive.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveApp.mqDesktop(context);
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
        isDesktop
            ? const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExperienceSecWidget(
                    expSecIcon: Icons.business_center,
                    expSecTitle: "Experience",
                    expTitle: "checking first",
                    expDes: "dsfsdfjdsgsj sgdfgsdgfhgdhfshd",
                    expTime: "2022 5241 12030",
                  ),
                  ExperienceSecWidget(
                    expSecIcon: Icons.school_rounded,
                    expSecTitle: "Knowledge",
                    expTitle: "checking first",
                    expDes: "dsfsdfjdffsdfsfsfssgsj",
                    expTime: "2022 5241 12030",
                  ),
                ],
              )
            : const Column(
                children: [
                  ExperienceSecWidget(
                    expSecIcon: Icons.business_center,
                    expSecTitle: "Experience",
                    expTitle: "checking first",
                    expDes:
                        "dsfsdfjdsgsfsdsdssdsffsdsffghfghfghfghfghfghfghfghfghfghfghfghfghfghfghj",
                    expTime: "2022 5241 12030",
                  ),
                  ExperienceSecWidget(
                    expSecIcon: Icons.school_rounded,
                    expSecTitle: "Knowledge",
                    expTitle: "checking first",
                    expDes:
                        "dsfsdfjdsgssfdsfdsfsjgffghhhhhhhhhhhhhhhhhhhhhhhhhh",
                    expTime: "2022 5241 12030",
                  ),
                ],
              )
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
