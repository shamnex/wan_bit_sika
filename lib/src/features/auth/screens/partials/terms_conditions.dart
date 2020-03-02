import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: textTheme.body1.copyWith(fontSize: 12, color: AppColors.text, height: 1.4),
            text: 'By clicking ',
            children: <TextSpan>[
              const TextSpan(
                text: '\'Sign In With Google\'',
                style: const TextStyle(
                  color: AppColors.text,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const TextSpan(
                text: ' you confirm that you have read the ',
              ),
              TextSpan(
                text: 'Terms & Conditions',
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    var url = 'https://bitsika.africa/terms';
                    await launch('$url');
                  },
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const TextSpan(
                text: ',that you understand them and that you agree to be bound by them.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
