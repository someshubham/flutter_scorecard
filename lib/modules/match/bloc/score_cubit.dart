import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scorecard/core/di/app_injector.dart';
import 'package:flutter_scorecard/data/score_repository.dart';
import 'package:flutter_scorecard/modules/match/bloc/score_state.dart';

class ScoreCubit extends Cubit<ScoreState> {
  final scoreRepo = locator<ScoreRepository>();

  ScoreCubit() : super(const ScoreInitial());

  Future<void> getMatchScore(int matchId) async {
    emit(const ScoreLoading());
    try {
      final res = await scoreRepo.getMatchScore(matchId: matchId);
      res.when(success: (data) {
        emit(ScoreLoaded(score: data));
      }, failure: (msg) {
        emit(ScoreError(msg));
      });
    } catch (e) {
      emit(ScoreError("$e"));
    }
  }
}
