import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/utils/EngrossaTexto.dart';
import 'package:nubank/utils/HeaderController.dart';
import 'package:provider/provider.dart';

class ContainersEmprestimo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 3,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(FontAwesomeIcons.handHoldingUsd,
                size: 20, color: Color(0xff707070)),
            SizedBox(
              width: 14,
            ),
            Text(
              "Empréstimo",
              style: TextStyle(fontSize: 16, color: Color(0xff707070)),
            )
          ],
        ),
        Consumer<HeaderController>(builder: (context, headerController, child) {
          return Column(
            children: [
              headerController.isVisible
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          "Valor disponível de até",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        EngrossaTexto(
                            14, 1, 0.4, Colors.black, "R\$ 10.300,00"),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        SizedBox(
                          height: 33,
                        ),
                        Container(
                          height: 49,
                          width: double.infinity,
                          color: Color(0xffF5F5F5),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                      ],
                    )
            ],
          );
        }),
        OutlinedButton(
          onPressed: null,
          style: OutlinedButton.styleFrom(
              side: BorderSide(
                  color: Theme.of(context).primaryColor, width: 0.5)),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: EngrossaTexto(11, 1, 0.4, Theme.of(context).primaryColor,
                  "SIMULAR EMPRÉSTIMO")),
        )
      ],
    );
  }
}
