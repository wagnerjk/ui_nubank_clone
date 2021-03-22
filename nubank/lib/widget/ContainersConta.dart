import 'package:flutter/material.dart';
import 'package:nubank/utils/EngrossaTexto.dart';
import 'package:nubank/utils/HeaderController.dart';
import 'package:provider/provider.dart';

class ContainersConta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.monetization_on_outlined,
                size: 28, color: Color(0xff707070)),
            SizedBox(
              width: 14,
            ),
            Text(
              "Conta",
              style: TextStyle(fontSize: 16, color: Color(0xff707070)),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Saldo disponível",
          style: TextStyle(fontSize: 12, color: Color(0xff707070)),
        ),
        Consumer<HeaderController>(builder: (context, headerController, child) {
          return Column(
            children: [
              headerController.isVisible
                  ? Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      EngrossaTexto(22, 2, 1, Colors.black, "R\$ 0,00"),
                    ],
                  )
                  : Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 28,
                          width: double.infinity,
                          color: Color(0xffF5F5F5),
                        ),
                      ],
                    )
            ],
          );
        }),
        SizedBox(
          height: 2,
        ),
      ],
    );
  }
}
