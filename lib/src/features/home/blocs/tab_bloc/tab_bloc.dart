import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_event.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_state.dart';

class HomeTabBloc extends Bloc<HomeTabEvent, HomeTab> {
  @override
  HomeTab get initialState => HomeTab.home;

  @override
  Stream<HomeTab> mapEventToState(HomeTabEvent event) async* {
    if (event is TabChanged) {
      yield event.tab;
    }
  }
}
