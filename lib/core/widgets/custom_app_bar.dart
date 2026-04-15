import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final double? leadingWidth;
  final bool centerTitle;
  final String title;
  final List<Widget>? action;
  final EdgeInsetsGeometry? actionPadding;
  CustomAppBar({
    super.key,
    this.leading,
    this.leadingWidth,
    this.action,
    this.centerTitle = false,
    this.title = "",
    this.actionPadding,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: leadingWidth,
      actionsPadding: actionPadding,
      leading: leading,
      actions: action,
      title: Text(title),
      centerTitle: centerTitle,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
