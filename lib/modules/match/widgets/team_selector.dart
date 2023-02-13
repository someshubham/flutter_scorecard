import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scorecard/data/models/score_card.dart';
import 'package:velocity_x/velocity_x.dart';

class TeamSelector extends StatefulWidget {
  final MatchData matchData;
  final void Function(bool) isTeamSelected;
  const TeamSelector(
      {Key? key, required this.matchData, required this.isTeamSelected})
      : super(key: key);

  @override
  State<TeamSelector> createState() => _TeamSelectorState();
}

class _TeamSelectorState extends State<TeamSelector> {
  bool isTeamASelected = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isTeamASelected ? Colors.red : Colors.grey,
                )),
            child: ListTile(
              onTap: () {
                setState(() {
                  isTeamASelected = true;
                });
                widget.isTeamSelected(true);
              },
              leading: CachedNetworkImage(
                imageUrl: widget.matchData.teama.logoUrl,
                height: 40,
              ),
              title:
                  "${widget.matchData.teama.name} Innings".text.size(14).make(),
              subtitle: widget.matchData.teama.scoresFull.text.bold.make(),
            ),
          ),
        ),
        10.widthBox,
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: !isTeamASelected ? Colors.red : Colors.grey,
                )),
            child: ListTile(
              onTap: () {
                setState(() {
                  isTeamASelected = false;
                });
                widget.isTeamSelected(false);
              },
              leading: CachedNetworkImage(
                imageUrl: widget.matchData.teamb.logoUrl,
                height: 40,
              ),
              title:
                  "${widget.matchData.teamb.name} Innings".text.size(14).make(),
              subtitle: widget.matchData.teamb.scoresFull.text.bold.make(),
            ),
          ),
        ),
      ],
    ).p16();
  }
}
