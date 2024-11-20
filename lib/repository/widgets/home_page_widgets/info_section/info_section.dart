import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Text(
        "this is mobile",
      ),
    );
  }
}
