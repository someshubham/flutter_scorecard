import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scorecard/data/models/score_card.dart';
import 'package:velocity_x/velocity_x.dart';

class TeamSelector extends StatelessWidget {
  final MatchData matchData;

  const TeamSelector({Key? key, required this.matchData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey,
                )),
            child: ListTile(
              leading: CachedNetworkImage(
                imageUrl: matchData.teama.logoUrl,
                height: 40,
              ),
              title: "${matchData.teama.name} Innings".text.size(14).make(),
              subtitle: matchData.teama.scoresFull.text.bold.make(),
            ),
          ),
        ),
        10.widthBox,
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey,
                )),
            child: ListTile(
              leading: CachedNetworkImage(
                imageUrl: matchData.teamb.logoUrl,
                height: 40,
              ),
              title: "${matchData.teamb.name} Innings".text.size(14).make(),
              subtitle: matchData.teamb.scoresFull.text.bold.make(),
            ),
          ),
        ),
      ],
    ).p16();
  }
}
