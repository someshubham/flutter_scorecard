import 'package:flutter_scorecard/core/result/result.dart';
import 'package:flutter_scorecard/data/models/score_card.dart';

abstract class ScoreRepository {
  Future<Result<ScoreCard>> getMatchScore({required int matchId});
}
