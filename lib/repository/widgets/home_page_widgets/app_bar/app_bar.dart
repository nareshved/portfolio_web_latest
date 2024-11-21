import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:portfolio_web_latest/domain/constants/responsive/responsive.dart';
import 'package:portfolio_web_latest/repository/widgets/hover_effect/hover_effect.dart';
import 'package:provider/provider.dart';
import '../../../../domain/constants/app_themes/dark_theme_provider/dark_theme_provider.dart';

class AppBarWidgetPage extends StatelessWidget {
  const AppBarWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = context.read<DarkThemeProvider>().themeValue;
    final isDesktop = ResponsiveApp.mqDesktop(context);

    return isDesktop
        ? ListTile(
            leading: Text(
              "follow me -",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            title: Row(
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
            ),
            trailing: Switch.adaptive(
              value: context.watch<DarkThemeProvider>().themeValue,
              onChanged: (value) {
                context.read<DarkThemeProvider>().themeValue = value;
              },
            ),
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
                      color: Colors.white),
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
                      color: Colors.white),
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
                      color: Colors.white),
                ),
              ),
            ],
          );
  }
}
