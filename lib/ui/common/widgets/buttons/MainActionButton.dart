import 'package:flutter/material.dart';

class MainActionButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  MainActionButton({@required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FlatButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(text, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
      ),
      color: Color(0xffE6E15A),
    );
  }
}
