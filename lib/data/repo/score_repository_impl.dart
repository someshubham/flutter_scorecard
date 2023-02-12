import 'package:flutter_scorecard/data/models/score_card.dart';
import 'package:flutter_scorecard/core/result/result.dart';
import 'package:flutter_scorecard/data/score_repository.dart';
import 'package:flutter_scorecard/network/index.dart';

class ScoreRepositoryImpl implements ScoreRepository {
  final IClient client;

  ScoreRepositoryImpl({required this.client});

  @override
  Future<Result<ScoreCard>> getMatchScore({required int matchId}) async {
    String kConstGetScoreCard = "/api/v2/cricket/getScoreCard/$matchId";
    try {
      final result = await client.getAsync(
        kConstGetScoreCard,
      );

      if (result.networkServiceResponse.success) {
        final ScoreCard res = ScoreCard.fromJson(
          result.mappedResult,
        );
        return Result.success(data: res);
      }

      return const Result.failure(reason: "Something went wrong");
    } catch (e) {
      return Result.failure(reason: "$e");
    }
  }
}
