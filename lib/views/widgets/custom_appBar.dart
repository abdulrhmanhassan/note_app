import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: Theme.of(context).textTheme.headlineSmall),
        Spacer(),
        // IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(17),
          ),
          child: const Icon(
            Icons.search,
            size: 30,
          ),
        )
      ],
    );
  }
}
