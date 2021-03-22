import 'package:flutter/material.dart';
import 'package:nubank/utils/EngrossaTexto.dart';
import 'package:nubank/utils/HeaderController.dart';
import 'package:provider/provider.dart';

class ContainersCartaoCredito extends StatefulWidget {
  @override
  _ContainersCartaoCreditoState createState() =>
      _ContainersCartaoCreditoState();
}

class _ContainersCartaoCreditoState extends State<ContainersCartaoCredito> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.credit_card_outlined,
                size: 28, color: Color(0xff707070)),
            SizedBox(
              width: 14,
            ),
            Text(
              "Cartão de Crédito",
              style: TextStyle(
                  fontSize: 16, letterSpacing: 0, color: Color(0xff707070)),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Fatura atual",
          style: TextStyle(
              fontSize: 12, letterSpacing: 0, color: Color(0xff707070)),
        ),
        Consumer<HeaderController>(builder: (context, headerController, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerController.isVisible
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 14,
                        ),
                        EngrossaTexto(
                            22, 2, 1, Color(0xff28A0DC), "R\$ 0,00"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Limite disponível ",
                              style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 0,
                              ),
                            ),
                            EngrossaTexto(
                                12, 1, 0.4, Color(0xff207B42), "R\$ 6.200,00"),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                            height: 48,
                            width: double.infinity,
                            color: Color(0xffF5F5F5),
                          ),
                      ],
                    )
            ],
          );
        })
      ],
    );
  }
}
