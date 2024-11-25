import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:provider/provider.dart';

import '../../../domain/constants/app_themes/dark_theme_provider/dark_theme_provider.dart';

import '../../../domain/constants/responsive/responsive.dart';
import '../hover_effect/hover_effect.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveApp.mqDesktop(context);
    // final isPage = MediaQuery.sizeOf(context);
    var isDark = context.read<DarkThemeProvider>().themeValue;
    return isDesktop
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              HoverEffect(
                builder: (isHover) => IconButton(
                  hoverColor:
                      isHover ? Theme.of(context).colorScheme.primary : null,
                  onPressed: () {},
                  icon: HugeIcon(
                      size: isHover ? 28 : 19,
                      icon: HugeIcons.strokeRoundedLinkedin01,
                      color: isDark
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary),
                  tooltip: "LinkedIn",
                ),
              ),
              HoverEffect(
                builder: (isHover) => IconButton(
                  hoverColor:
                      isHover ? Theme.of(context).colorScheme.primary : null,
                  onPressed: () {},
                  icon: HugeIcon(
                      size: isHover ? 28 : 19,
                      icon: HugeIcons.strokeRoundedWhatsapp,
                      color: isDark
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary),
                  tooltip: "WhatsApp",
                ),
              ),
              HoverEffect(
                builder: (isHover) => IconButton(
                  hoverColor:
                      isHover ? Theme.of(context).colorScheme.primary : null,
                  onPressed: () {},
                  icon: HugeIcon(
                      size: isHover ? 28 : 19,
                      icon: HugeIcons.strokeRoundedGithub,
                      color: isDark
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary),
                  tooltip: "GitHub",
                ),
              ),
              HoverEffect(
                builder: (isHover) => IconButton(
                  tooltip: "Nareshved1996@gmail.com",
                  hoverColor:
                      isHover ? Theme.of(context).colorScheme.primary : null,
                  onPressed: () {},
                  icon: HugeIcon(
                      size: isHover ? 28 : 19,
                      icon: HugeIcons.strokeRoundedMailAtSign01,
                      color: isDark
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          )
        : Column(
            children: [
              HoverEffect(
                builder: (isHover) => IconButton(
                  hoverColor:
                      isHover ? Theme.of(context).colorScheme.primary : null,
                  onPressed: () {},
                  icon: HugeIcon(
                      size: isHover ? 28 : 19,
                      icon: HugeIcons.strokeRoundedLinkedin01,
                      color: isDark
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary),
                  tooltip: "LinkedIn",
                ),
              ),
              HoverEffect(
                builder: (isHover) => IconButton(
                  hoverColor:
                      isHover ? Theme.of(context).colorScheme.primary : null,
                  onPressed: () {},
                  icon: HugeIcon(
                      size: isHover ? 28 : 19,
                      icon: HugeIcons.strokeRoundedWhatsapp,
                      color: isDark
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary),
                  tooltip: "WhatsApp",
                ),
              ),
              HoverEffect(
                builder: (isHover) => IconButton(
                  hoverColor:
                      isHover ? Theme.of(context).colorScheme.primary : null,
                  onPressed: () {},
                  icon: HugeIcon(
                      size: isHover ? 28 : 19,
                      icon: HugeIcons.strokeRoundedGithub,
                      color: isDark
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary),
                  tooltip: "GitHub",
                ),
              ),
              HoverEffect(
                builder: (isHover) => IconButton(
                  tooltip: "Nareshved1996@gmail.com",
                  hoverColor:
                      isHover ? Theme.of(context).colorScheme.primary : null,
                  onPressed: () {},
                  icon: HugeIcon(
                      size: isHover ? 28 : 19,
                      icon: HugeIcons.strokeRoundedMailAtSign01,
                      color: isDark
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary),
                ),
              )
            ],
          );
  }
}
