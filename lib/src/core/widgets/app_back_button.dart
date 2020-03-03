import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wan_bi_sika/src/constants/icons.dart';

class AppBackButton<T> extends StatelessWidget {
  const AppBackButton({
    Key key,
    this.color,
    this.onPressed,
    this.popable,
  }) : super(key: key);

  final Color color;
  final T popable;

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
          Navigator.maybePop(context, popable);
        }
      },
    );
  }
}

class AppCloseButton<T> extends StatelessWidget {
  const AppCloseButton({
    Key key,
    this.color,
    this.onPressed,
    this.popable,
  }) : super(key: key);

  final Color color;
  final T popable;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.cancel,
        color: color,
      ),
      color: color,
      onPressed: () {
        if (onPressed != null) {
          onPressed();
        } else {
          Navigator.maybePop(context, popable);
        }
      },
    );
  }
}
