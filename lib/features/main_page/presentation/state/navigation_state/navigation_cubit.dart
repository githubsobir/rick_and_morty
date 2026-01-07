import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'navigation_state.dart';

@injectable
class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState());

  void changeIndex(int index) {
    if (state.currentIndex == index) return;
    emit(state.copyWith(currentIndex: index));
  }
}
