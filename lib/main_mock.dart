import 'package:wan_bi_sika/flavor/flavor.dart';
import 'package:wan_bi_sika/src/service_locator.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'app_config.dart';
import 'flavor/flavor.dart';
import 'src/features/app/screens/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await di.init(Flavor.mock);
  BlocSupervisor.delegate = di.sl.get<HydratedBlocDelegate>();
  runApp(AppConfig(app: const App()));
}
