import 'package:flutter/material.dart';

/// 앱 전반에서 재사용하는 공용 AppBar.
class MovieLogAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MovieLogAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
