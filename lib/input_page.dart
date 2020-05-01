import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loan Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
                margin: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Monthly Payment',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '20000000',
                      style: TextStyle(fontSize: 60.0, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF0A0E21),
                )),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300.0,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFF2F2F2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(width: 1.0),
                          ),
                          hintText: 'Enter principal amount',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 300.0,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFF2F2F2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(width: 1.0),
                          ),
                          hintText: 'Enter period of payment',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 300.0,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFF2F2F2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(width: 1.0),
                          ),
                          hintText: 'Enter Interest rate',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: FlatButton(
                      onPressed: () {
                        /*...*/
                      },
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
//                    color: Colors.red,
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1.0,
                              style: BorderStyle.solid,
                              color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
