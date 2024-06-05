import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';

class CustomAppbar extends StatelessWidget implements PreferredSize {
  const CustomAppbar({
    super.key,
    required this.title,
    this.actions = const [],
  });
  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      actions: actions,
      title: Text(
        title,
        style: Styles.styleBold24.copyWith(color: mainColor),
      ),
      iconTheme: IconThemeData(color: mainColor),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
