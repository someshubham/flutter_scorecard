import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scorecard/data/models/score_card.dart';
import 'package:flutter_scorecard/modules/match/bloc/score_cubit.dart';
import 'package:flutter_scorecard/modules/match/bloc/score_state.dart';
import 'package:flutter_scorecard/utils/after_layout_mixin.dart';
import 'package:velocity_x/velocity_x.dart';

class MatchSummary extends StatefulWidget {
  const MatchSummary({super.key});

  @override
  State<MatchSummary> createState() => _MatchSummaryState();
}

class _MatchSummaryState extends State<MatchSummary> with AfterLayoutMixin {
  late ScrollController _scrollController;

  bool isExpanded = false;

  @override
  void initState() {
    super.initState();

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
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (_, int index) {
                        return ListTile(
                          leading: Container(
                              padding: EdgeInsets.all(8),
                              width: 100,
                              child: Placeholder()),
                          title: Text('Place ${index + 1}', textScaleFactor: 2),
                        );
                      },
                      childCount: 20,
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

class SummaryCard extends StatelessWidget {
  final MatchData matchData;

  const SummaryCard({super.key, required this.matchData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(color: Colors.white70),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          "${matchData.competition.title} - ${matchData.title} , ${matchData.subtitle}"
              .text
              .make(),
          Row(
            children: [
              CachedNetworkImage(
                imageUrl: matchData.teama.logoUrl,
                height: 60,
              ),
              matchData.teama.shortName.text.make(),
              Spacer(),
              matchData.teama.scoresFull.text.make(),
            ],
          ),
          Row(
            children: [
              CachedNetworkImage(
                imageUrl: matchData.teamb.logoUrl,
                height: 60,
              ),
              matchData.teamb.shortName.text.make(),
              Spacer(),
              matchData.teamb.scoresFull.text.make(),
            ],
          ),
          // ListTile(
          //   leading: CachedNetworkImage(
          //     imageUrl: matchData.teamb.logoUrl,
          //     height: 60,
          //   ),
          //   title: matchData.teamb.shortName.text.make(),
          //   trailing: matchData.teamb.scoresFull.text.make(),
          // ),
          20.heightBox,
          Row(
            children: [
              matchData.statusNote.text.make(),
            ],
          ),
        ],
      ),
    );
  }
}

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final MatchData matchData;

  MyHeaderDelegate({required this.matchData});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final progress = shrinkOffset / maxExtent;
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 150),
            opacity: progress,
            child: ColoredBox(
              color: const Color(0xBE7A81FF),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 150),
            opacity: 1 - progress,
            child: Image.asset(
              'assets/cricket-bg.png',
              fit: BoxFit.cover,
            ),
          ),
          SummaryCard(matchData: matchData)
        ],
      ),
    );
  }

  @override
  double get maxExtent => 264;

  @override
  double get minExtent => 84;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
