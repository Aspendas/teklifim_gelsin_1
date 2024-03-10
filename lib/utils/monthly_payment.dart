import 'dart:math';

String calculeteMonthlyPayment(amount, totalInterestRate, expiry) {
  String zeroInterestLoanPayment = (amount / expiry).toStringAsFixed(2);
  String nonZeroInterestLoanPayment =
      ((amount * totalInterestRate * pow(1 + totalInterestRate, expiry)) /
              (pow(1 + totalInterestRate, expiry) - 1))
          .toStringAsFixed(2);

  return totalInterestRate == 0
      ? zeroInterestLoanPayment
      : nonZeroInterestLoanPayment;
}
