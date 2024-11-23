import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/experience_wid.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    //   final isDesktop = ResponsiveApp.mqDesktop(context);
    final isPage = MediaQuery.sizeOf(context);
    return Column(
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
        const Row(
          children: [
            Expanded(child: OneColWidget()),
            Expanded(child: OneColWidget()),
          ],
        )
      ],
    );
  }
}

class OneColWidget extends StatelessWidget {
  const OneColWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isPage = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.business_center),
            SizedBox(
              width: isPage.width * 0.007,
            ),
            Text(
              "Experience",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: isPage.height * 0.040,
        ),
        const ExperienceSecWidget(
          expTitle: "naresh  ",
          expDes:
              "sdfjsd dsfsdds sdfusdfud ggfdgdfghfkdgfgffdhggfdgfghfjdhgjhfhdjdfjjgfgjjfgf ghf",
          expTime: "dsffdfsfdsd",
        ),
      ],
    );
  }
}









// import 'package:flutter/material.dart';
// import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/auto_size_text.dart';
// import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/experience_wid.dart';

// class ExperienceSection extends StatelessWidget {
//   const ExperienceSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     //   final isDesktop = ResponsiveApp.mqDesktop(context);
//     final isPage = MediaQuery.sizeOf(context);
//     return Column(
//       children: [
//         Text(
//           "Journey",
//           style: Theme.of(context)
//               .textTheme
//               .bodyLarge!
//               .copyWith(color: Theme.of(context).colorScheme.primary),
//         ),
//         SizedBox(
//           height: isPage.height * 0.040,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     const Icon(Icons.business_center),
//                     SizedBox(
//                       width: isPage.width * 0.007,
//                     ),
//                     Text(
//                       "Experience",
//                       style: Theme.of(context)
//                           .textTheme
//                           .titleMedium!
//                           .copyWith(fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: isPage.height * 0.040,
//                 ),
//                 const ExperienceSecWidget(
//                   expTitle: "naresh  ",
//                   expDes: "sdfjsd dsfsdds sdfusdfud",
//                   expTime: "dsffdfsfdsd",
//                 ),
//                 AutoSizeTextExp(
//                     expText:
//                         "kanaaa fdhfhgfdg sdfdkfdjfd fdkfsdkfjsdfj dkfjsdkjfdfj dfdksfjdjfsdf dsjfjsdkfjdf dfksdjsdjsdfjdf dkfjjdkjfhgfdhgdf ")
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     const Icon(Icons.school_rounded),
//                     SizedBox(
//                       width: isPage.width * 0.007,
//                     ),
//                     Text(
//                       "Knowledge",
//                       style: Theme.of(context)
//                           .textTheme
//                           .titleMedium!
//                           .copyWith(fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: isPage.height * 0.040,
//                 ),
//                 const ExperienceSecWidget(
//                     expTitle: "naresh dsdfdgd fdhgfdhgfd fhdhgfd",
//                     expDes: "sdffd",
//                     expTime: "dsffdfsfdsd"),
//               ],
//             ),
//             // const Column(
//             //   children: [Text("Icons 2s")],
//             // ),
//           ],
//         )
//       ],
//     );
//   }
// }




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
