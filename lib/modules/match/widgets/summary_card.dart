import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scorecard/data/models/score_card.dart';
import 'package:velocity_x/velocity_x.dart';

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
                height: 48,
              ),
              matchData.teama.shortName.text.make(),
              const Spacer(),
              matchData.teama.scoresFull.text.make(),
            ],
          ),
          Row(
            children: [
              CachedNetworkImage(
                imageUrl: matchData.teamb.logoUrl,
                height: 48,
              ),
              matchData.teamb.shortName.text.make(),
              const Spacer(),
              matchData.teamb.scoresFull.text.make(),
            ],
          ),
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
