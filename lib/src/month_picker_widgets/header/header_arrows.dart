import 'package:flutter/material.dart';

class HeaderArrows extends StatelessWidget {
  const HeaderArrows(
      {super.key,
      this.arrowcolors,
      required this.onUpButtonPressed,
      required this.onDownButtonPressed,
      required this.upState,
      required this.downState,
      this.size});
  final Color? arrowcolors;
  final VoidCallback onUpButtonPressed, onDownButtonPressed;
  final bool upState, downState;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        IconButton(
          iconSize: size,
          icon: Icon(
            Icons.keyboard_arrow_up,
            size: size,
            color: upState ? arrowcolors : arrowcolors!.withOpacity(0.5),
          ),
          onPressed: upState ? onUpButtonPressed : null,
        ),
        SizedBox(
          width: 10,
        ),
        IconButton(
          iconSize: size,
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: size,
            color: downState ? arrowcolors : arrowcolors!.withOpacity(0.5),
          ),
          onPressed: downState ? onDownButtonPressed : null,
        ),
      ],
    );
  }
}
