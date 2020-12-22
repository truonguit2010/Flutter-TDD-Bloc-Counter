
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd_bloc_counter/counter/cubit/counter_cubit.dart';
import '../counter.dart';

class CounterView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Counter'),),

      body: Center(
        child: BlocBuilder<CounterCubit, int> (
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2,);
          },
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key("counterView_increase_floating"),
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increase(),
          ),

          const SizedBox(height: 8,),

          FloatingActionButton(
            key: const Key('counterView_decrement_floating'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          )
        ],
      ),
    );
  }

}