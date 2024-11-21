import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/domain/constants/app_contents/contents.dart';
import 'package:portfolio_web_latest/domain/constants/image_assets_path/images_asset.dart';
import 'package:portfolio_web_latest/repository/widgets/home_page_widgets/app_bar/app_bar.dart';
import 'package:provider/provider.dart';
import '../../../../domain/constants/app_themes/dark_theme_provider/dark_theme_provider.dart';
import '../../../../domain/constants/responsive/responsive.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = context.read<DarkThemeProvider>().themeValue;
    final isDesktop = ResponsiveApp.mqDesktop(context);
    final isPage = MediaQuery.sizeOf(context);
    return Container(
        height: isDesktop ? 380 : 450,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer),
        child: isDesktop
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 26.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            introTitle,
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: isDark
                                        ? null
                                        : Theme.of(context)
                                            .colorScheme
                                            .surface),
                          ),
                          Text(
                            devRole,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: isDark
                                        ? null
                                        : Theme.of(context).colorScheme.surface,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: isPage.height * 0.020,
                          ),
                          Text(
                            style: TextStyle(
                              color: isDark
                                  ? null
                                  : Theme.of(context).colorScheme.surface,
                            ),
                            introDesc,
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: isPage.height * 0.040,
                          ),
                          ElevatedButton.icon(
                              icon: const Icon(Icons.person_2_rounded),
                              onPressed: () {},
                              label: Text(
                                "Download Resume",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(ImagesAssetPage.croppedMyImg))),
                  )),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Switch.adaptive(
                      value: context.watch<DarkThemeProvider>().themeValue,
                      onChanged: (value) {
                        context.read<DarkThemeProvider>().themeValue = value;
                      },
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 200,
                              height: 200,
                              decoration: const BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.elliptical(300, 60),
                                      right: Radius.elliptical(88, 66)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          ImagesAssetPage.croppedMyImg))),
                            ),
                            SizedBox(
                              width: isPage.width * 0.100,
                            ),
                            const AppBarWidgetPage()
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Text(
                            introTitle,
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: isDark
                                        ? null
                                        : Theme.of(context)
                                            .colorScheme
                                            .surface),
                          ),
                          Text(
                            devRole,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: isDark
                                        ? null
                                        : Theme.of(context).colorScheme.surface,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: isPage.height * 0.020,
                          ),
                          Text(
                            style: TextStyle(
                              color: isDark
                                  ? null
                                  : Theme.of(context).colorScheme.surface,
                            ),
                            introDesc,
                            textAlign:
                                isDesktop ? TextAlign.left : TextAlign.center,
                          ),
                          SizedBox(
                            height: isPage.height * 0.040,
                          ),
                          ElevatedButton.icon(
                              icon: const Icon(Icons.person_2_rounded),
                              onPressed: () {},
                              label: Text(
                                "Download Resume",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              )),
                        ],
                      ))
                    ],
                  )),
                ],
              ));
  }
}
