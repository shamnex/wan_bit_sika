import 'package:equatable/equatable.dart';
import 'package:wan_bi_sika/src/features/home/blocs/tab_bloc/tab_state.dart';

abstract class HomeTabEvent extends Equatable {
  const HomeTabEvent();
}

class TabChanged extends HomeTabEvent {
  final HomeTab tab;

  const TabChanged(this.tab);

  @override
  List<Object> get props => [tab];

  @override
  String toString() => 'TabChanged { tab: $tab }';
}
