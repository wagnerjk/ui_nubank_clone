import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/screens/Configs.dart';
import 'package:nubank/utils/HeaderController.dart';
import 'package:nubank/widget/ContainerRewards.dart';
import 'package:nubank/widget/ContainerSeguroVida.dart';
import 'package:nubank/widget/Containers.dart';
import 'package:nubank/widget/ContainersCartaoCredito.dart';
import 'package:nubank/widget/ContainersConta.dart';
import 'package:nubank/widget/ContainersEmprestimo.dart';
import 'package:nubank/widget/FooterCards.dart';
import 'package:nubank/widget/Header.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.only( top: 45),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Header(),
              Consumer<HeaderController>(builder: (context, headerController, child){
                return Column(
                  children: [
                    !headerController.isScreenConfig
                      ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.665,
                                  child: ListView(
                                    physics: BouncingScrollPhysics(),
                                    padding: EdgeInsets.all(0),
                                    children: [
                                      Containers(child: ContainersCartaoCredito(),),
                                      Containers(child: ContainersConta(),),
                                      Containers(child: ContainersEmprestimo(), isLast: true),
                                      Containers(child: ContainersRewards(), isLast: true),
                                      Containers(child: ContainersSeguroVida(), isLast: true,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Container(
                              height: 95,
                              //margin: EdgeInsets.only(bottom: 17),
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.only(left: 16),
                                children: [
                                  FooterCards(icone: Icons.api_outlined, texto: "Pix",),
                                  FooterCards(icone: FontAwesomeIcons.barcode, texto: "Pagar",),
                                  FooterCards(icone: Icons.person_add_outlined, texto: "Indicar \namigos"),
                                  FooterCards(icone: FontAwesomeIcons.fileInvoiceDollar, texto: "Transferir",),
                                  FooterCards(icone: FontAwesomeIcons.piggyBank, texto: "Depositar",),
                                  FooterCards(icone: FontAwesomeIcons.handHoldingUsd, texto: "Empréstimos",),
                                  FooterCards(icone: Icons.credit_card_outlined, texto: "Cartão \nvirtual",),
                                  FooterCards(icone: FontAwesomeIcons.mobileAlt, texto: "Recarga de \ncelular",),
                                  FooterCards(icone: FontAwesomeIcons.slidersH, texto: "Ajustar \nlimite",),
                                  FooterCards(icone: Icons.lock_outline, texto: "Bloquear \ncartão",),
                                  FooterCards(icone: FontAwesomeIcons.commentDollar, texto: "Cobrar",),
                                  FooterCards(icone: FontAwesomeIcons.handHoldingUsd, texto: "Doação",),
                                  FooterCards(icone: FontAwesomeIcons.questionCircle, texto: "Me ajuda", isLast: true,),
                                ],
                              ),
                            ),
                          )
                      ])
                      : ConfigScreen()
                  ],
                );
              }),
          ]),
        ),
      ])
    );
  }
}
