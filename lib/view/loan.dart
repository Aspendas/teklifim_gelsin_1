import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/loan.dart';

class LoanView extends StatefulWidget {
  @override
  State<LoanView> createState() => _LoanViewState();
}

class _LoanViewState extends State<LoanView> {
  final TextEditingController _idController = TextEditingController();

  final TextEditingController _borrowerController = TextEditingController();

  final TextEditingController _amountController = TextEditingController();

  final TextEditingController _maturityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loanViewModel = Provider.of<LoanViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Loan List'),
      ),
      body: Column(
        children: [
          // TextField(
          //   controller: _idController,
          //   decoration: InputDecoration(labelText: 'ID'),
          // ),
          // TextField(
          //   controller: _borrowerController,
          //   decoration: InputDecoration(labelText: 'Borrower'),
          // ),
          // TextField(
          //   controller: _amountController,
          //   keyboardType: TextInputType.number,
          //   decoration: InputDecoration(labelText: 'Amount'),
          // ),
          // TextField(
          //   controller: _maturityController,
          //   keyboardType: TextInputType.number,
          //   decoration: InputDecoration(labelText: 'Maturity'),
          // ),
          ElevatedButton(
            onPressed: () {
              // final id = _idController.text;
              // final borrower = _borrowerController.text;
              // final amount = int.parse(_amountController.text);
              // final maturity = int.parse(_maturityController.text);
              //loanViewModel.addLoan(id, borrower, amount, maturity);
              setState(() {
                loanViewModel.fetchLoans2();
              });
            },
            child: Text('Add Loan'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: loanViewModel.loans.length,
              itemBuilder: (context, index) {
                print(loanViewModel.loans.toString() + "xxxxxxx");
                final loan = loanViewModel.loans[index];
                return ListTile(
                  title: Text('ID: ${loan.id}'),
                  subtitle: Text(loan.maturity.toString() +
                      ' months, ' +
                      loan.amount.toString() +
                      ' TL'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
