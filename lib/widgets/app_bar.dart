import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      title: Row(
        children: [
          Image.asset(
            'assets/images/utube_logo.png',  // Path to your local asset
            height: 80,
            width: 90,
          ),
          const Spacer(),
          const Icon(Icons.search),
          const SizedBox(width: 20),
          const Icon(Icons.notifications),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
