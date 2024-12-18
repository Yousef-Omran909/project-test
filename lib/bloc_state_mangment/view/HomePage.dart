import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/bloc_state_mangment/bloc/counter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {
            // BlocProvider.of<CounterBloc>(context).add(IncEvent());
            context.read<CounterBloc>().add(IncEvent());
          },
          child: Text("+"),
        ),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(ResetEvent());
          },
          child: Text("0"),
        ),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(DecEvent());
            // BlocProvider.of<CounterBloc>(context).add(DecEvent());
          },
          child: Text("-"),
        ),
      ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child:
              BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
            if (state is CounterInitial) {
              return Text(
                "0",
                style: TextStyle(color: Colors.black, fontSize: 30),
              );
            } else if (state is CounterValueChangeState) {
              print("${state.counter} kkjjjjjj");
              return Text(
                state.counter.toString(),
                style: TextStyle(color: Colors.black, fontSize: 30),
              );
            } else {
              return SizedBox();
            }
          }))
        ],
      ),
    );
  }
}
