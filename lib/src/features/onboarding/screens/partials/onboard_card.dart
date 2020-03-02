import 'package:flutter_svg/svg.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:wan_bi_sika/src/core/widgets/staggered_animated_column.dart';

class OnboardCard extends StatefulWidget {
  final String description;
  final String title;
  final String svg;
  final bool isActive;
  const OnboardCard({
    Key key,
    this.description,
    this.offset,
    this.svg,
    this.title,
    this.isActive,
  }) : super(key: key);
  final double offset;

  @override
  _OnboardCardState createState() => _OnboardCardState();
}

class _OnboardCardState extends State<OnboardCard> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((widget.offset.abs() - 0.5), 2) / 0.08));
    double scale = (1 - (widget.offset.abs() * .5)).clamp(0.8, 1.0);

    return Transform.scale(
      scale: Curves.easeInOut.transform(scale),
      child: Transform.translate(
        offset: Offset(-80 * Curves.easeIn.transform(gauss) * widget.offset.sign, 0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    height: 100,
                    width: 140,
                    decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
                      BoxShadow(
                        blurRadius: 50,
                        color: AppColors.primary.shade900,
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 40, left: 8, right: 8),
                    decoration: BoxDecoration(
                      color: AppColors.primary.shade50,
                      borderRadius: BorderRadius.circular(16), //<--custom shape
                    ),
                    child: SvgPicture.asset(widget.svg),
                  ),
                ],
              ),
            ),
            Expanded(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 1000),
                child: Builder(
                    key: ValueKey(widget.isActive),
                    builder: (context) {
                      if (!widget.isActive) {
                        return SizedBox();
                      }
                      return StaggeredAnimatedColumn(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(),
                          SizedBox(),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              widget.title,
                              style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w900),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            child: Text(
                              widget.description,
                              style: Theme.of(context).textTheme.body2,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(),
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
