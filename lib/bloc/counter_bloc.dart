

import 'package:bloc/bloc.dart';
import 'package:test_mobile_developer_indonesia_satu_tujuh/main.dart';

class CounterBloc extends Cubit<String> {

  CounterBloc() : super("");

  void counter1(String N){
    var result = "";
    var number = int.parse(N);

    for(int i = 1 ; i <= number; i++){
      result += "${i.toString()} ";
    }

    emit(result);
  }


  void counter2(String N){
    var result = "";
    var number = int.parse(N);

    for(int i = 1 ; i <= number; i++){
      result += "${i.toString()} ";
    }

    for(int j = number-1; j >= 1; j--){
      result += "${j.toString()} ";
    }

    emit(result);
  }

  void counter3(String N){
    var result = "";
    var number = int.parse(N);
    var temp = 10;

    for(int i = 1 ; i <= number; i++){
      result += "${temp.toString()} ";
      temp += 11;
    }

    emit(result);
  }

  void counter4(String N){
    var result = "";
    var number = int.parse(N);

    for(int i = 1 ; i <= number; i++){
      result += "${i.toString()} ";
    }

    var finalResult = result.replaceAll("5", "LIMA");
    finalResult = finalResult.replaceAll("7", "TUJUH");

    emit(finalResult);
  }

}