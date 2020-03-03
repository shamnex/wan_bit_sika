import 'package:flutter/cupertino.dart' show CupertinoButton;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_bloc.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_state.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    Key key,
    @required this.isActive,
    @required this.onPressed,
    @required this.inactiveIcon,
    @required this.activeIcon,
  }) : super(key: key);

  final VoidCallback onPressed;
  final bool isActive;
  final Widget activeIcon;
  final Widget inactiveIcon;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabBloc, HomeTab>(builder: (context, tab) {
      return CupertinoButton(
          pressedOpacity: 0.9,
          onPressed: onPressed,
          child: AnimatedSwitcher(
            key: ValueKey(tab),
            duration: Duration(milliseconds: 100),
            child: SizedBox(
              child: isActive ? activeIcon : inactiveIcon,
            ),
          ));
    });
  }
}
