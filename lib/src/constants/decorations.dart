import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'colors.dart';

class AppDecorations {
  const AppDecorations._();

  static BoxDecoration card1 = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
          blurRadius: 20,
          offset: Offset(0, 30.0),
          color: AppColors.text.withOpacity(
            .05,
          ))
    ],
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  );
}
