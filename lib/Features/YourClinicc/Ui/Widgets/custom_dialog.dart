import 'package:flutter/material.dart';
import 'package:gbsub/core/utils/style.dart';

class Customdialog extends StatelessWidget {
  const Customdialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(
          'حذف الميعاد',
          style: Styles.styleBold16,
          textAlign: TextAlign.center,
        ),
        content: Text(
          'هل تريد حذف الميعاد ؟',
          textAlign: TextAlign.center,
          style: Styles.style14,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'لا',
              style: Styles.style14,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'نعم',
              style: Styles.style14,
            ),
          ),
        ]);
  }
}
