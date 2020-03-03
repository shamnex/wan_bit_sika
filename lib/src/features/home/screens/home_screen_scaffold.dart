import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wan_bi_sika/src/constants/border_radius.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:wan_bi_sika/src/constants/decorations.dart';
import 'package:wan_bi_sika/src/constants/icons.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/core/utils/screen_utils.dart';
import 'package:wan_bi_sika/src/core/widgets/buttons.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_state.dart';
import 'package:wan_bi_sika/src/features/auth/bloc/auth_bloc.dart';
import 'package:wan_bi_sika/src/features/auth/bloc/auth_event.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_bloc.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_event.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_state.dart';
import 'package:wan_bi_sika/src/features/home/partials/tab_button.dart';
import 'package:wan_bi_sika/src/features/home/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController _animationController;

  AppBloc appBloc;
  @override
  void initState() {
    appBloc = context.bloc();

    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _animationController.forward();
    ScreenUtils.onWidgetDidBuild(() {
      if (appBloc.userLoggedIn) {}
    });

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
        listenWhen: (prev, current) {
          // return !prev.userLoggedIn && current.userLoggedIn;
        },
        listener: (context, state) {},
        builder: (context, appState) {
          return BlocBuilder<HomeTabBloc, HomeTab>(builder: (context, activeTab) {
            final textTheme = Theme.of(context).textTheme;
            final user = appState.currentUser;
            return Scaffold(
              floatingActionButton: SizedBox(
                width: 150,
                child: AppButton(
                  // tooltip: 'Mark Attendance',
                  child: SizedBox.expand(
                    child: Center(
                      child: Text(
                        'Send Cash',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: Stack(
                children: <Widget>[
                  Container(
                    height: kToolbarHeight,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: AppColors.background,
                        blurRadius: 40,
                      )
                    ]),
                  ),
                  SizedBox(
                    height: kToolbarHeight,
                    child: BottomAppBar(
                      // shape: CircularNotchedRectangle(),
                      color: Colors.white,
                      elevation: 0.0,
                      notchMargin: 5,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: TabButton(
                                activeIcon: Icon(
                                  AppIcons.home,
                                ),
                                inactiveIcon: Icon(
                                  AppIcons.home,
                                  color: Colors.grey.shade300,
                                ),
                                isActive: activeTab == HomeTab.home,
                                onPressed: () {
                                  context.bloc<HomeTabBloc>().add(TabChanged(HomeTab.home));
                                },
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Expanded(
                              child: TabButton(
                                activeIcon: Icon(
                                  AppIcons.user,
                                  size: 30,
                                ),
                                inactiveIcon: Icon(
                                  AppIcons.user,
                                  size: 30,
                                  color: Colors.grey.shade300,
                                ),
                                isActive: activeTab == HomeTab.volunteers,
                                onPressed: () {
                                  context.bloc<HomeTabBloc>().add(TabChanged(HomeTab.volunteers));
                                },
                              ),
                            ),
                          ],
                        ),
                        height: kToolbarHeight,
                      ),
                    ),
                  ),
                ],
              ),
              body: IndexedStack(
                index: activeTab == HomeTab.home ? 0 : 1,
                children: <Widget>[
                  const DashBoardScreen(),
                  const ProfileScreen(),
                ],
              ),
            );
          });
        });
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<AppBloc, AppState>(builder: (context, appState) {
      return Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  transform: GradientRotation(1.39626),
                  stops: [0, 0.5, 0.5, 0.5, 1, 1],
                  colors: [
                    AppColors.primary.shade500,
                    AppColors.primary.shade500,
                    AppColors.background,
                    AppColors.background,
                    AppColors.background,
                    AppColors.background,
                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height / 1.3,
            ),
            SafeArea(
              child: Padding(
                padding: AppPaddings.mH,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 16),
                    Text(
                      'Hello ${appState.currentUser.userName}',
                      style: textTheme.title.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              text: 'Your Wan Bit Saka balance\n',
                              style: textTheme.body1.copyWith(color: Colors.white),
                              children: [
                                TextSpan(text: 'USD ', style: TextStyle(fontSize: 22)),
                                TextSpan(
                                  text: '0',
                                  style: TextStyle(fontSize: 40),
                                ),
                                TextSpan(
                                  text: '.',
                                  style: TextStyle(fontSize: 40),
                                ),
                                TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                width: 130,
                                height: 35,
                                child: AppButton.white(
                                  onPressed: () {},
                                  child: Container(
                                    child: Text('Deposite'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              SizedBox(
                                width: 130,
                                height: 35,
                                child: AppButton.white(
                                  onPressed: () {},
                                  child: Container(
                                    child: Text('Pay'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Activity',
                            style: textTheme.subhead.copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: mq.size.width,
                            padding: AppPaddings.mA,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: AppBorderRadius.small_all,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: kToolbarHeight,
                                  width: kToolbarHeight,
                                  color: AppColors.background,
                                ),
                                SizedBox(width: 8),
                                RichText(
                                  text: TextSpan(
                                    text: 'Naira Deposite\n',
                                    style: textTheme.title.copyWith(
                                      height: 1.6,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Monday, 20, 2020 , 05:19',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RichText(
                                      maxLines: 1,
                                      text: TextSpan(
                                        text: '\$20,199',
                                        style: textTheme.subtitle.copyWith(
                                          height: 1.6,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(8),
                                      height: 30,
                                      width: 30,
                                      color: AppColors.background,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
