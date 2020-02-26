import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//BC : Code mort.
class OutlineButtonWidget extends StatefulWidget{
    final String text;
    final Function() onPressed;
    final bool isEnable;

    const OutlineButtonWidget({
    Key key,
      @required this.text,
      this.isEnable,
      this.onPressed,
    }) : super(key: key);

  @override
    State<StatefulWidget> createState() => _OutlineButtonWidget();

}

class _OutlineButtonWidget extends State<OutlineButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
      child: OutlineButton(
        child: Text(widget.text),
        onPressed: widget.isEnable ? () => widget.onPressed : null,
        disabledTextColor: widget.isEnable ? Colors.black : Colors.red,
      ),
    );
  }

}