import 'package:flutter/material.dart';
import 'package:flutter_scaffold/src/constants/colors.dart';
import 'package:flutter_scaffold/src/core/widgets/remove_focus_widget.dart';

import 'app_loading.dart';
import 'blur_bg_widget.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    Key key,
    this.child,
    this.loading = false,
  }) : super(key: key);

  final Widget child;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return RemoveFocusWidget(
      child: SizedBox(
        height: mq.size.height,
        width: mq.size.width,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            child,
            if (loading)
              Positioned.fill(
                child: BluredBgWidget(
                  child: Center(
                      child: AppSpinner(
                    color: AppColors.primary,
                  )),
                ),
              )
          ],
        ),
      ),
    );
  }
}
