import 'package:flutter/material.dart';
import 'package:nubank/utils/EngrossaTexto.dart';
import 'package:nubank/utils/HeaderController.dart';
import 'package:provider/provider.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: EngrossaTexto(24, 1, 0.4, Colors.white, "Olá, Wagner")
            ),
            Container(
              child: Row(
                children: [
                  Consumer<HeaderController>(builder: (context, headerController, child){
                    return InkWell(
                      onTap: (){
                        headerController.changeVisible();
                      },
                      child:
                      Consumer<HeaderController>(builder: (context, headerController, child){
                        return Visibility(
                          visible: !headerController.isScreenConfig,
                          child: Container(
                            child: Icon(
                              headerController.isVisible  ? Icons.visibility_off_outlined
                                                          : Icons.visibility_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).accentColor
                            ),
                          ),
                        );
                      },),
                    );
                  },),
                  SizedBox(
                    width: 10,
                  ),
                  Consumer<HeaderController>(builder: (context, headerController, child){
                    return InkWell(
                      onTap: (){
                        headerController.changeScreenConfig();
                      },
                      child: Container(
                        child: Icon(
                          headerController.isScreenConfig  ? Icons.clear_rounded
                                                            : Icons.settings_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).accentColor
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
