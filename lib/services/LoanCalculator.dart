import 'dart:math';

void main() {
  LoanCalculator loan = LoanCalculator(3000000, 18, 3);
  loan.calculateLoan();
}

class LoanCalculator {
  static int numberOfMonths = 12;
  static int percent = 100;

  int _principal;
  double _annualInterest;
  int _years;

  LoanCalculator(this._principal, this._annualInterest, this._years);

  int getNumberOfPayments() {
    return _years * numberOfMonths;
  }

  double getInterestPerMonth() {
    return (_annualInterest / percent / numberOfMonths);
  }

  double calculateLoan() {
    int numberOfPayments = getNumberOfPayments();
    double annualRate = getInterestPerMonth();

    double monthlyPayment = _principal *
        (annualRate * (pow(1 + annualRate, numberOfPayments))) /
        ((pow(1 + annualRate, numberOfPayments) - 1));
    print(monthlyPayment.toStringAsFixed(2));
    return monthlyPayment;
  }
}
