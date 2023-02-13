import 'package:flutter/material.dart';
import 'package:flutter_scorecard/data/models/score_card.dart';
import 'package:velocity_x/velocity_x.dart';

class BatsmanScorecard extends StatelessWidget {
  final Innings innings;

  const BatsmanScorecard({Key? key, required this.innings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Row(
            children: [
              Expanded(flex: 2, child: "Batsman".text.make()),
              Expanded(child: "R".text.make().px16()),
              Expanded(child: "B".text.make().px16()),
              Expanded(child: "4R".text.make().px16()),
              Expanded(child: "6S".text.make().px16()),
              Expanded(child: "SR".text.make().pOnly(left: 12, right: 4))
            ],
          ),
        ),
        for (var batsman in innings.batsmen) ...[
          Row(
            children: [
              Expanded(flex: 2, child: batsman.name!.text.make()),
              Expanded(child: batsman.runs!.trim().text.make().px16()),
              Expanded(child: batsman.ballsFaced!.trim().text.make().px16()),
              Expanded(child: batsman.fours!.text.make().px16()),
              Expanded(child: batsman.sixes!.text.make().px16()),
              Expanded(
                flex: 1,
                child: batsman.strikeRate!
                    .substring(0, 5)
                    .text
                    .make()
                    .pOnly(left: 12, right: 4),
              )
            ],
          ).p8(),
        ],
      ],
    ).p8();
  }
}
