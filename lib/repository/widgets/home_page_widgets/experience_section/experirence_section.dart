import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/experience_wid.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/experience_section/exp_widget/heading_widget/heading_widget_title.dart';

import '../../../../domain/constants/app_contents/contents.dart';
import '../../../../domain/constants/responsive/responsive.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveApp.mqDesktop(context);
    final isPage = MediaQuery.sizeOf(context);
    return isDesktop
        ? Column(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: isDesktop
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    const Expanded(
                        child: OneColWidget(
                      expIconTitle: "Experience",
                      expHeadIcon: Icons.business_center,
                      expDes: expeienceDesc,
                      expTitle: expeienceTitles,
                      expTime: date,
                    )),
                    SizedBox(
                      width: isPage.width * 0.035,
                    ),
                    const Expanded(
                        child: OneColWidget(
                      expIconTitle: "Knowledge",
                      expHeadIcon: Icons.school_rounded,
                      expDes:
                          "Firestore, Authentication, Cloud Functions, and Cloud Messaging",
                      expTitle: "Firebase Integration",
                      expTime: "25.020",
                    )),
                  ],
                ),
              ),
             
            ],
          )
        : const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                HeadingWidgetTitle(),
                OneColWidget(
                  expIconTitle: "Experience",
                  expHeadIcon: Icons.business_center,
                  expDes: expeienceDesc,
                  expTitle: expeienceTitles,
                  expTime: date,
                ),
                OneColWidget(
                  expIconTitle: "Knowledge",
                  expHeadIcon: Icons.school_rounded,
                  expDes: "Firebase Integration",
                  expTitle: "Firebase Integration",
                  expTime: "25.020",
                ),
                ExperienceSecWidget(
                  expDes: "no do",
                  expTitle: "title ek",
                  expTime: "25.020",
                ),
              ],
            ),
          );
  }
}

class OneColWidget extends StatelessWidget {
  const OneColWidget(
      {super.key,
      required this.expTitle,
      required this.expDes,
      required this.expTime,
      required this.expIconTitle,
      required this.expHeadIcon});

  final String expTitle, expDes, expTime, expIconTitle;
  final IconData expHeadIcon;

  @override
  Widget build(BuildContext context) {
    final isPage = MediaQuery.sizeOf(context);
    final isDesktop = ResponsiveApp.mqDesktop(context);
    return Column(
      crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Row(
          //   mainAxisAlignment:
          //       isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            Icon(expHeadIcon),
            SizedBox(
              width: isPage.width * 0.007,
            ),
            Text(
              expIconTitle,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        SizedBox(
          height: isPage.height * 0.040,
        ),
        ExperienceSecWidget(
          expTitle: expTitle,
          expDes: expDes,
          expTime: expTime,
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
