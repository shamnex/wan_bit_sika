import 'package:wan_bi_sika/flavor/flavor.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_bloc.dart';

import '../../../service_locator.dart';

class HomeServiceLocator {
  static init(Flavor flavor) {
    sl.registerSingleton<HomeTabBloc>(HomeTabBloc());
  }

  static dispose() {
    sl.unregister<HomeTabBloc>(disposingFunction: (_) {});
  }
}
