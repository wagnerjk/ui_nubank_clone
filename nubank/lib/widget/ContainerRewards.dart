import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/utils/EngrossaTexto.dart';

class ContainersRewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(FontAwesomeIcons.handHoldingUsd,
                size: 20, color: Color(0xff707070)),
            SizedBox(
              width: 14,
            ),
            Text(
              "Rewards",
              style: TextStyle(
                  fontSize: 22, color: Theme.of(context).primaryColor),
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Apague compras com pontos que nunca expiram.",
          style: TextStyle(fontSize: 15, height: 1.4),
        ),
        SizedBox(
          height: 15,
        ),
        OutlinedButton(
          onPressed: null,
          style: OutlinedButton.styleFrom(
              side: BorderSide(
                  color: Theme.of(context).primaryColor, width: 0.5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: EngrossaTexto(11, 1, 0.4, Theme.of(context).primaryColor, "CONHECER")
          ),
        )
      ],
    );
  }
}
