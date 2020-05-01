import 'package:flutter/material.dart';
import '../components/reusable_text_field.dart';
import '../services/loan_calculator.dart';
import '../components/bottom_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double principal;
  int interest;
  int period;
  String monthlyPayment = '0';

  void getLoanPayment() {
    LoanCalculator loan = LoanCalculator(principal, interest, period);
    String result = loan.calculateLoan();
    setState(() {
      print(result);
      monthlyPayment = result;
    });
  }

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
                    SizedBox(height: 20.0),
                    Text(
                      monthlyPayment.toString(),
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
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
                  ReusableTextField(
                    onType: (value) {
                      setState(() {
                        principal = double.parse(value);
                      });
                    },
                    placeholder: 'Enter principal amount',
                  ),
                  SizedBox(height: 10.0),
                  ReusableTextField(
                    onType: (value) {
                      setState(() {
                        print(value);
                        period = int.parse(value);
                      });
                    },
                    placeholder: 'Enter payment period',
                  ),
                  SizedBox(height: 10.0),
                  ReusableTextField(
                    onType: (value) {
                      setState(() {
                        print(value);
                        interest = int.parse(value);
                      });
                    },
                    placeholder: 'Enter interest rate',
                  ),
                  SizedBox(height: 20.0),
                  BottomButton(
                    onType: () {
                      setState(() {
                        getLoanPayment();
                      });
                    },
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
