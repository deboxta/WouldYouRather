import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlineButtonWidget extends StatelessWidget{
    final String text;
    final Function() onPressed;

    const OutlineButtonWidget({
    Key key,
      @required this.text,
      this.onPressed,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.fromLTRB(6.0, 0.0, 6.0, 0.0),
      child: OutlineButton(
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }

}