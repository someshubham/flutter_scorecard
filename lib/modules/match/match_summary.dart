import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scorecard/modules/match/bloc/score_cubit.dart';
import 'package:flutter_scorecard/modules/match/bloc/score_state.dart';
import 'package:flutter_scorecard/utils/after_layout_mixin.dart';

class MatchSummary extends StatefulWidget {
  const MatchSummary({super.key});

  @override
  State<MatchSummary> createState() => _MatchSummaryState();
}

class _MatchSummaryState extends State<MatchSummary> with AfterLayoutMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ScoreCubit, ScoreState>(
        builder: ((context, state) {
          return state.when(
            initial: () => const Text("Initial"),
            loading: () => const Text("Loading"),
            loaded: (data) => Text("${data.toJson()}"),
            error: (msg) => Text(msg),
          );
        }),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    BlocProvider.of<ScoreCubit>(context).getMatchScore(56622);
  }
}
