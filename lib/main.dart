import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'bloc/counter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => CounterBloc(),
    child: MyApp(),
  ));
}
