
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mobile_developer_indonesia_satu_tujuh/bloc/counter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  String input = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BlocBuilder<CounterBloc, String>(
        builder: (context, result){
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a number',
                  ),
                  keyboardType: TextInputType.number,

                  onChanged: (newValue){
                    setState(() {
                      input = newValue;
                    });
                  }
                ),

                Row(
                  children: [

                    // SOAL 1
                    Container(
                      width: 100,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            side: const BorderSide(color: Colors.black),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 4, right: 4),
                          ),
                          onPressed: () => context.read<CounterBloc>().counter1(input),
                          child: const Text("SOAL 1", style: TextStyle(
                              fontSize: 10
                          ))
                      ),
                    ),

                    // SOAL 2
                    Container(
                      width: 100,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            side: const BorderSide(color: Colors.black),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 4, right: 4),
                          ),
                          onPressed: () => context.read<CounterBloc>().counter2(input),
                          child: const Text("SOAL 2", style: TextStyle(
                              fontSize: 10
                          ))
                      ),
                    )
                  ],
                ),

                Row(
                  children: [

                    // SOAL 3
                    Container(
                      width: 100,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            side: const BorderSide(color: Colors.black),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 4, right: 4),
                          ),
                          onPressed: () => context.read<CounterBloc>().counter3(input),
                          child: const Text("SOAL 3", style: TextStyle(
                              fontSize: 10
                          ))
                      ),
                    ),

                    // SOAL 4
                    Container(
                      width: 100,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            side: const BorderSide(color: Colors.black),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 4, right: 4),
                          ),
                          onPressed: () => context.read<CounterBloc>().counter4(input),
                          child: const Text("SOAL 4", style: TextStyle(
                              fontSize: 10
                          ))
                      ),
                    )
                  ],
                ),

                Text(
                  "Result : ",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                Text(
                  result.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}