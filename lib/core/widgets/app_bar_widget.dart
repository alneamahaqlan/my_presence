import 'package:flutter/material.dart';

import '../extensions/context_extensions.dart';
import 'text_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final IconData? leadingIcon;
  final VoidCallback? onLeadingPressed;
  final List<Widget>? actions;

  const AppBarWidget({
    super.key,
    required this.title,
    this.backgroundColor = Colors.teal,
    this.leadingIcon = Icons.arrow_back_ios,
    this.onLeadingPressed,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: backgroundColor,
      title: TextWidget(
        text: title,
        style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
      ),
      leading:
          leadingIcon != null
              ? IconButton(
                icon: Icon(leadingIcon),
                onPressed: onLeadingPressed ?? () => context.pop(),
              )
              : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
