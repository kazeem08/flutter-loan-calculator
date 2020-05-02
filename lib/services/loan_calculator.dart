import 'dart:math';

class LoanCalculator {
  static int numberOfMonths = 12;
  static int percent = 100;

  double _principal;
  int _annualInterest;
  int _years;

  LoanCalculator(this._principal, this._annualInterest, this._years);

  int getNumberOfPayments() {
    return _years * numberOfMonths;
  }

  double getInterestPerMonth() {
    return (_annualInterest / percent / numberOfMonths);
  }

  String calculateLoan() {
    int numberOfPayments = getNumberOfPayments();
    double annualRate = getInterestPerMonth();

    double monthlyPayment = _principal *
        (annualRate * (pow(1 + annualRate, numberOfPayments))) /
        ((pow(1 + annualRate, numberOfPayments) - 1));
    print(monthlyPayment.toStringAsFixed(2));
    return addComma(monthlyPayment.toStringAsFixed(2));
//    return monthlyPayment.toStringAsFixed(2);
  }

  String addComma(String result) {
    List resultArray = result.split('.');
    int lengthOfString = resultArray[0].length;
    String finalResult;
    for (int i = 0; i < lengthOfString; i++) {
      if (lengthOfString == 4) {
        finalResult = resultArray[0].substring(0, 1) +
            ',' +
            resultArray[0].substring(1) +
            resultArray[1];
      } else if (lengthOfString == 5) {
        finalResult = resultArray[0].substring(0, 2) +
            ',' +
            resultArray[0].substring(2) +
            resultArray[1];
      } else if (lengthOfString > 5) {
        finalResult = resultArray[0].substring(0, 3) +
            ',' +
            resultArray[0].substring(3) +
            '.' +
            resultArray[1];
      }
      print('HERREER $finalResult');
      return finalResult;
    }
  }
}
