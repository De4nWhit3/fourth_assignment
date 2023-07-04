import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_assignment/2_application/pages/advice/bloc/advicer_bloc.dart';

class AdvicePageWrapperProvider extends StatelessWidget {
  const AdvicePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    // provide the bloc to advice page
    return BlocProvider<AdvicerBloc>(
      create: (context) => AdvicerBloc(),
      child: const AdvicePage(),
    );
  }
}

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<AdvicerBloc, AdvicerState>(
            builder: (context, state) {
              if (state is AdvicerInitial) {
                return const Text('Initial State');
              } else if (state is AdvicerStateLoading) {
                return const Text('Loading State...');
              } else if (state is AdvicerStateLoaded) {
                return Text(state.advice);
              } else if (state is AdvicerStateError) {
                return Text(state.errorMsg);
              } else {
                return const Placeholder();
              }
            },
          ),
        ),
        SizedBox(
          height: 200,
          child: Center(
            child: TextButton(
                onPressed: () {
                  BlocProvider.of<AdvicerBloc>(context)
                      .add(AdviceRequestedEvent());
                },
                child: const Text('Press me')),
          ),
        ),
      ],
    );
  }
}
