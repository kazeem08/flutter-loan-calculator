import 'package:flutter/material.dart';

class ReusableTextfield extends StatelessWidget {
  String placeholder;
  ReusableTextfield({@required this.placeholder});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            fillColor: Color(0xFFF2F2F2),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(width: 1.0),
            ),
            hintText: placeholder,
            hintStyle: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
