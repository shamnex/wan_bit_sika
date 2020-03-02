import 'package:flutter/material.dart';
import 'package:flutter_scaffold/src/constants/paddings.dart';
import 'package:flutter_scaffold/src/core/widgets/staggered_animated_column.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Padding(
        padding: AppPaddings.bodyH,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Spacer(),
              Expanded(
                child: StaggeredAnimatedColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: StaggeredAnimatedColumn(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: FittedBox(
                              child: Text(
                                'WELCOME! SCREEN',
                                style: textTheme.display1.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: theme.brightness == Brightness.light ? Colors.black87 : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
