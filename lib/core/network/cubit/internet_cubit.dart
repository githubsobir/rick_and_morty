import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

@injectable
class InternetCubit extends Cubit<InternetStatus> {
  final InternetConnection _internetConnection;
  late final StreamSubscription _subscription;

  InternetCubit(this._internetConnection) : super(InternetStatus.connected) {
    _subscription = _internetConnection.onStatusChange.listen((status) {
      if (status == InternetStatus.connected) {
        emit(InternetStatus.connected);
      } else {
        emit(InternetStatus.disconnected);
      }
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
