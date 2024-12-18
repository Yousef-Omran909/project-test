import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/bloc_state_mangment/bloc/counter_bloc.dart';
import 'package:train/counter_basket_app/counter_basket_app.dart';
import 'package:train/counter_basket_app/counter_cubit.dart';
import 'bloc_state_mangment/view/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PointsCounter(),
        ));
  }
}
