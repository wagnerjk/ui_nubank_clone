import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/utils/EngrossaTexto.dart';
import 'package:nubank/widget/ListTileCustomizado.dart';

class ConfigScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Container(
                  height: 645,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(0),
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 8,),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.white
                            ),
                          ),
                          SizedBox(height: 12,),
                          Text(
                            "Agência 0001 Conta 9388381-4 \nBanco 260 - Nu Pagamentos S.A.",

                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.2,
                              fontSize: 12.5,
                              color: Colors.white)
                          ),
                          SizedBox(height: 31,),
                        ],
                      ),
                      Divider(color: Colors.white, height: 1.8),
                      ListTileCustomizao(FontAwesomeIcons.questionCircle, "Me ajuda"),
                      Divider(color: Colors.white, height: 1.8),
                      ListTileCustomizao(Icons.person_outline_rounded, "Perfil"),
                      Divider(color: Colors.white, height: 1.8),
                      ListTileCustomizao(Icons.monetization_on_outlined, "Configurar conta"),
                      Divider(color: Colors.white, height: 1.8),
                      ListTileCustomizao(Icons.api_outlined, "Minhas chaves Pix"),
                      Divider(color: Colors.white, height: 1.8),
                      ListTileCustomizao(Icons.credit_card_outlined, "Configurar cartão"),
                      Divider(color: Colors.white, height: 1.8),
                      ListTileCustomizao(Icons.store_rounded, "Pedir conta PJ"),
                      Divider(color: Colors.white, height: 1.8),
                      ListTileCustomizao(Icons.mail_outline_sharp, "Configurar notificações"),
                      Divider(color: Colors.white, height: 1.8),
                      ListTileCustomizao(FontAwesomeIcons.mobileAlt, "Configurações do app"),
                      Divider(color: Colors.white, height: 1.8),
                      ListTileCustomizao(FontAwesomeIcons.questionCircle, "Sobre"),
                      Divider(color: Colors.white, height: 1.8),
                      SizedBox(height: 20,),
                      OutlinedButton(
                        onPressed: null,
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.white, width: 0.5
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: EngrossaTexto(11, 1, 0.4, Colors.white, "SAIR DO APP"),
                        )
                      ),
                      SizedBox(height: 12,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
    );
  }
}
