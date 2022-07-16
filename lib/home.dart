import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CounterBloc>(context).add(AddCounter());
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is AddCounterState) {
                return Text(state.counterText.toString());
              }
              return Text('0');
            },
          ),
        ),
      ),
    );
  }
}
