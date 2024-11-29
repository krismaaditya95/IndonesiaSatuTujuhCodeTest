import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mobile_developer_indonesia_satu_tujuh/bloc/bloc_observer.dart';
import 'package:test_mobile_developer_indonesia_satu_tujuh/bloc/counter_bloc.dart';
import 'package:test_mobile_developer_indonesia_satu_tujuh/main_screen.dart';

void main() {

  Bloc.observer = const MyBlocObserver();

  runApp(const MyApp());
}

class counterN extends Cubit<int>{
  counterN() : super(0);


}

abstract class CounterEvent{}

class Counter1 extends CounterEvent {}
class Counter2 extends CounterEvent {}
class Counter3 extends CounterEvent {}
class Counter4 extends CounterEvent {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => CounterBloc(),
          child: const MainScreen(title: 'COUNTER+')),
    );
  }
}


