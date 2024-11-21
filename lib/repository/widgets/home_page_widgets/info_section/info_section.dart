import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/domain/constants/app_contents/contents.dart';
import 'package:portfolio_web_latest/domain/constants/image_assets_path/images_asset.dart';
import '../../../../domain/constants/responsive/responsive.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    //  var isDark = context.read<DarkThemeProvider>().themeValue;
    final isDesktop = ResponsiveApp.mqDesktop(context);
//    final isPage = MediaQuery.sizeOf(context);
    return Container(
        height: isDesktop ? 380 : 450,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
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
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            devRole,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          const Text(
                            introDesc,
                            textAlign: TextAlign.left,
                          ),
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
            : const Column());
  }
}
