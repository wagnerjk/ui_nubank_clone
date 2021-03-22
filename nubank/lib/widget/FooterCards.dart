import 'package:flutter/material.dart';

class FooterCards extends StatelessWidget {

  final bool isLast;
  final String texto;
  final IconData icone;
  FooterCards({
    this.isLast = false,
    @required this.texto,
    @required this.icone
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLast ? const EdgeInsets.only(right: 16.0)
                      : const EdgeInsets.only(right: 8.0),
      child: Material(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(3),
        child: InkWell(
          onTap: (){},
          child: Container(
            width: 88.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    this.icone,
                    color: Colors.white,
                  ),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      texto,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white
                        )
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
