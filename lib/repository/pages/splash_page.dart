import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/domain/constants/animated_builder/animated_builder.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    //  final isMobile = ResponsiveApp.mqMobile(context);
    final isPage = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedWidgetPage(
              whoIsAnmate: Flexible(
                child: Container(
                    width: 160,
                    height: 195,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Theme.of(context).colorScheme.primary,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                        )),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Image.asset(
                        "assets/images/full_nk.png",
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
            ),
            SizedBox(height: isPage.height * 0.02),
            // const Text("Portfolio",
            //     style: TextStyle(
            //         fontSize: 22,
            //         fontWeight: FontWeight.bold,
            //         fontFamily: "NunitoSans")),
            AnimatedTextKit(
                totalRepeatCount: 1,
                stopPauseOnTap: true,
                animatedTexts: [
                  TyperAnimatedText("Portfolio",
                      speed: Durations.medium1,
                      textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NunitoSans")),
                ]),
          ],
        ),
      ),
    ));
  }
}
