

import 'package:bloc/bloc.dart';
import 'package:test_mobile_developer_indonesia_satu_tujuh/main.dart';

class InputBloc extends Cubit<String> {

  InputBloc() : super("");

  void onChangedInput() => emit(state);
}