import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

class FadeInRoute<T> extends CupertinoPageRoute<T> {
  FadeInRoute({WidgetBuilder builder, RouteSettings settings}) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) {
      return child;
    }

    // timeDilation = 50.0;

    final Animation opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Curves.easeInOut,
        ),
        reverseCurve: const Interval(
          0.0,
          1.0,
          curve: Curves.easeInOut,
        ),
      ),
    );

    return AnimatedBuilder(
      animation: opacity,
      child: child,
      builder: (BuildContext context, Widget child) {
        return Opacity(
          opacity: opacity.value,
          child: child,
        );
      },
    );
  }
}

class NoAnimationRoute<T> extends CupertinoPageRoute<T> {
  NoAnimationRoute({WidgetBuilder builder, RouteSettings settings}) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) {
      return child;
    }

    // timeDilation = 50.0;

    final Animation opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.0,
          0.0,
          curve: Curves.linear,
        ),
        reverseCurve: const Interval(
          0.0,
          0.0,
          curve: Curves.linear,
        ),
      ),
    );

    return AnimatedBuilder(
      animation: opacity,
      child: child,
      builder: (BuildContext context, Widget child) {
        return Opacity(
          opacity: opacity.value,
          child: child,
        );
      },
    );
  }
}

class SlideLeftRoute<T> extends CupertinoPageRoute<T> {
  SlideLeftRoute({WidgetBuilder builder, RouteSettings settings}) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) {
      return child;
    }

    final Animation opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.0,
          0.5,
          curve: Curves.linear,
        ),
        reverseCurve: const Interval(
          0.0,
          1.0,
          curve: Curves.linear,
        ),
      ),
    );

    final Animation slideUp = Tween<double>(
      begin: 400.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Curves.easeInOutBack,
        ),
        reverseCurve: const Interval(
          0.0,
          1.0,
          curve: Curves.easeInOutBack,
        ),
      ),
    );

    return AnimatedBuilder(
      animation: opacity,
      child: child,
      builder: (BuildContext context, Widget child) {
        return Opacity(
          opacity: opacity.value,
          child: Transform(
            transform: Matrix4.identity()..translate(slideUp.value),
            // child: child,
            child: child,
          ),
        );
      },
    );
  }
}

class SlideUpRoute<T> extends CupertinoPageRoute<T> {
  SlideUpRoute({WidgetBuilder builder, RouteSettings settings}) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) {
      return child;
    }

    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
            opacity: Tween<double>(
              begin: 0.5,
              end: 1,
            ).animate(
              CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
              ),
            ),
            child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(0.0, 1.0),
                  end: Offset(0.0, 0.0),
                ).animate(
                  CurvedAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    parent: animation,
                  ),
                ),
                child: child));
      },
    );
  }
}

class SlideDownRoute<T> extends CupertinoPageRoute<T> {
  SlideDownRoute({WidgetBuilder builder, RouteSettings settings}) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) {
      return child;
    }

    secondaryAnimation = Tween<double>(
      begin: 400.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Cubic(.06, 1.21, .26, .68),
        ),
        reverseCurve: const Interval(
          0.0,
          1.0,
          curve: Cubic(.06, 1.21, .26, .68),
        ),
      ),
    );

    final Animation opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.0,
          0.5,
          curve: Curves.linear,
        ),
        reverseCurve: const Interval(
          0.0,
          1.0,
          curve: Curves.linear,
        ),
      ),
    );

    final Animation slideUp = Tween<double>(
      begin: 400.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Cubic(.06, 1.21, .26, .68),
        ),
        reverseCurve: const Interval(
          0.0,
          1.0,
          curve: Cubic(.06, 1.21, .26, .68),
        ),
      ),
    );

    return AnimatedBuilder(
      animation: opacity,
      child: child,
      builder: (BuildContext context, Widget child) {
        return Opacity(
          opacity: opacity.value,
          child: Transform(
            transform: Matrix4.identity()..translate(0.0, -slideUp.value),
            // child: child,
            child: child,
          ),
        );
      },
    );
  }
}

class HeroAnimationRouet extends PageRouteBuilder {}

//  PageRouteBuilder<Null>(
//         pageBuilder: (BuildContext context, Animation<double> animation,
//         final    Animation<double> secondaryAnimation) {
//           return AnimatedBuilder(
//               animation: animation,
//               builder: (BuildContext context, Widget child) {
//                 return Opacity(
//                   opacity: animation.value,
//                   child: Page1(),
//                 );
//               });
//         },
//         transitionconst    duration:const   Duration(milliseconds: 600));
