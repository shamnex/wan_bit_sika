import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_bloc.dart';
import 'package:wan_bi_sika/src/features/home/services/home_routes.dart';
import 'package:wan_bi_sika/src/features/home/services/home_service_locator.dart';
import '../../../service_locator.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

class HomeBaseScreen extends StatefulWidget {
  const HomeBaseScreen();

  @override
  _HomeBaseScreenState createState() => _HomeBaseScreenState();
}

class _HomeBaseScreenState extends State<HomeBaseScreen> {
  @override
  void initState() {
    HomeServiceLocator.init(BlocProvider.of<AppBloc>(context).state.flavor);
    super.initState();
  }

  @override
  void dispose() {
    HomeServiceLocator.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await _navigatorKey.currentState.maybePop(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeTabBloc>(create: (context) => sl()),
        ],
        child: Material(
          child: Navigator(
            key: _navigatorKey,
            onGenerateRoute: HomeRoutes.configureRoutes,
          ),
        ),
      ),
    );
  }
}
