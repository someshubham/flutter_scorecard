import 'package:dio/dio.dart';
import 'package:flutter_scorecard/app/env.dart';
import 'package:flutter_scorecard/data/repo/score_repository_impl.dart';
import 'package:flutter_scorecard/data/score_repository.dart';
import 'package:flutter_scorecard/network/dio_client.dart';
import 'package:flutter_scorecard/network/i_client.dart';
import 'package:flutter_scorecard/network/mock_client.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

const String _prodBaseUrl =
    'https://production-rest-microservice.thesportstak.com';

class AppInjector {
  late Flavor _flavor;

  Flavor get flavor => _flavor;

  static final AppInjector _singleton = AppInjector._internal();

  factory AppInjector() => _singleton;

  AppInjector._internal();

  Future<void> configure(Flavor flavor) async {
    _flavor = flavor;
    await _initRepos();
  }

  Future<void> _initRepos() async {
    locator.registerLazySingleton<IClient>(() {
      switch (_flavor) {
        case Flavor.dev:
          return MockClient();
        case Flavor.prod:
          return DioClient(
            dio: Dio(
              BaseOptions(baseUrl: _prodBaseUrl),
            ),
            cancelToken: CancelToken(),
          );
        default:
          return DioClient(
            dio: Dio(
              BaseOptions(baseUrl: _prodBaseUrl),
            ),
            cancelToken: CancelToken(),
          );
      }
    });

    locator.registerLazySingleton<ScoreRepository>(
      () => ScoreRepositoryImpl(client: locator()),
    );
  }
}
