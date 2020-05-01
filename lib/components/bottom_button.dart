import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onType});

  final Function onType;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: this.onType,
        child: Text(
          "Calculate",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
//                    color: Colors.red,
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.0, style: BorderStyle.solid, color: Colors.grey),
            borderRadius: BorderRadius.circular(50)),
        color: Color(0xFF0A0E21),
      ),
    );
  }
}
