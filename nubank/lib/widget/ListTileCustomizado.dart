import 'package:flutter/material.dart';

class ListTileCustomizao extends StatelessWidget {

  final IconData leading;
  final String texto;

  ListTileCustomizao(this.leading, this.texto);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: InkWell(
        onTap: (){},
        child: ListTile(
          leading: Icon(
            this.leading,
            color: Colors.white,
          ),
          title: Align(
            alignment: Alignment(-1.22, 0),
            child: Text(
                this.texto,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                )),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
