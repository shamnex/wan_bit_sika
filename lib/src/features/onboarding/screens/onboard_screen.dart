import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/constants/strings.dart';
import 'package:wan_bi_sika/src/constants/svgs.dart';
import 'package:wan_bi_sika/src/core/widgets/buttons.dart';
import 'package:wan_bi_sika/src/features/onboarding/screens/partials/indicators.dart';
import 'package:wan_bi_sika/src/features/onboarding/screens/partials/onboard_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wan_bi_sika/src/routes/app_routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen();
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with TickerProviderStateMixin {
  PageController pageController;
  double pageOffset = 0;
  int activeIndex = 0;
  final onBoardTexts = AppString.onBoardTextsEG;
  final onBoardTitle = AppString.onBoardTitle;
  final onBoardTSVGS = [
    AppSVGs.sendMoney,
    AppSVGs.mobileBanking,
    AppSVGs.savingExpenses,
  ];

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page); //<-- add listener and set state
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //TODO REFACTOR TO FLUTTER_BLOC
    return ChangeNotifierProvider(
      lazy: true,
      create: (_) => pageController,
      child: Builder(builder: (context) {
        return Scaffold(
            body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              SizedBox(
                height: MediaQuery.of(context).size.height * .65,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  controller: pageController,
                  children: <Widget>[
                    ...List.generate(
                      onBoardTexts.length,
                      (index) => OnboardCard(
                        isActive: activeIndex == index,
                        offset: pageOffset - index,
                        description: onBoardTexts[index],
                        title: onBoardTitle[index],
                        svg: onBoardTSVGS[index],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                children: <Widget>[
                  const Spacer(),
                  BuildIndicators(
                    activeItem: activeIndex,
                    itemCount: onBoardTexts.length,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: AppPaddings.bodyH,
                    child: AppButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.auth);
                      },
                      child: Text(
                        'Get Started'.toUpperCase(),
                        style: Theme.of(context).textTheme.button.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.auth);
                    },
                    child: Text(
                      'Skip',
                      style: Theme.of(context).textTheme.button.copyWith(color: AppColors.secondary.shade200),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              )),
            ],
          ),
        ));
      }),
    );
  }
}
