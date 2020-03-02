import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wan_bi_sika/src/constants/icons.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key key, this.color, this.onPressed}) : super(key: key);

  final Color color;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        AppIcons.back_ui,
        color: color,
      ),
      color: color,
      onPressed: () {
        if (onPressed != null) {
          onPressed();
        } else {
          Navigator.maybePop(context);
        }
      },
    );
  }
}
