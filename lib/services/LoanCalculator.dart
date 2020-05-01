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
}
