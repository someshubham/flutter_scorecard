import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scorecard/modules/match/bloc/score_cubit.dart';
import 'package:flutter_scorecard/modules/match/bloc/score_state.dart';
import 'package:flutter_scorecard/modules/match/widgets/summary_card.dart';
import 'package:flutter_scorecard/modules/match/widgets/team_selector.dart';
import 'package:flutter_scorecard/utils/after_layout_mixin.dart';
import 'package:velocity_x/velocity_x.dart';

class MatchSummary extends StatefulWidget {
  const MatchSummary({super.key});

  @override
  State<MatchSummary> createState() => _MatchSummaryState();
}

class _MatchSummaryState extends State<MatchSummary>
    with AfterLayoutMixin, SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController tabController;

  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController()
      ..addListener(() {
        if (_isAppBarExpanded) {
          setState(() {
            isExpanded = true;
          });
        } else {
          setState(() {
            isExpanded = false;
          });
        }
      });
  }

  bool get _isAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ScoreCubit, ScoreState>(
        builder: ((context, state) {
          return state.when(
            initial: () => const Text("Initial"),
            loading: () => const Text("Loading"),
            loaded: (data) {
              return CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverAppBar(
                    primary: true,
                    expandedHeight: 280,
                    collapsedHeight: 80,
                    pinned: true,
                    snap: true,
                    floating: true,
                    title: !isExpanded
                        ? null
                        : [
                            CachedNetworkImage(
                              imageUrl: data.matchData.teama.logoUrl,
                              height: 60,
                            ),
                            data.matchData.teama.scores.text
                                .color(Colors.black)
                                .make()
                                .px8(),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child:
                                  "vs".text.color(Colors.black).size(14).make(),
                            ),
                            data.matchData.teamb.scores.text
                                .color(Colors.black)
                                .make()
                                .px8(),
                            CachedNetworkImage(
                              imageUrl: data.matchData.teamb.logoUrl,
                              height: 60,
                            ),
                          ].row(),
                    backgroundColor: Colors.white,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            "assets/cricket-bg.png",
                            fit: BoxFit.fill,
                          ),
                          Column(
                            children: [
                              60.heightBox,
                              data.matchData.title.text.make(),
                              SummaryCard(matchData: data.matchData),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: TabBar(
                      indicatorColor: Colors.red,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: const [
                        Tab(text: 'Scorecard'),
                        Tab(text: 'Squads'),
                        Tab(text: 'Commentary'),
                      ],
                      controller: tabController,
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        TeamSelector(
                          matchData: data.matchData,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
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
