import 'package:flutter_scorecard/data/models/score_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_state.freezed.dart';

@freezed
class ScoreState with _$ScoreState {
  const factory ScoreState.initial() = ScoreInitial;
  const factory ScoreState.loading() = ScoreLoading;
  const factory ScoreState.loaded({required ScoreCard score}) = ScoreLoaded;
  const factory ScoreState.error(String msg) = ScoreError;
}
