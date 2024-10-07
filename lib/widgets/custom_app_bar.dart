import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.searchIcon,
      this.onPressed});

  final void Function()? onPressed;
  final IconData searchIcon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Spacer(),
        // IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        CustomIcon(
          onPressed: onPressed,
          icon: searchIcon,
        )
      ],
    );
  }
}
