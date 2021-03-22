import 'package:flutter/material.dart';

class Containers extends StatelessWidget {

  final Widget child;
  final bool isLast;
  Containers({@ required this.child, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
        child: InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: isLast ? const EdgeInsets.only(top: 23.0, left: 23.0, right: 23.0, bottom: 18.0)
                              : const EdgeInsets.only(top: 21.0, left: 23.0, right: 23.0, bottom: 25.0),
              child: this.child,
            ),
          ),
        ),
      ),
    );
  }
}
