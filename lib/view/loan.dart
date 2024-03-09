import 'package:flutter/material.dart';

import 'search_loan.dart';

class LoanView extends StatefulWidget {
  const LoanView({super.key});

  @override
  State<LoanView> createState() => _LoanViewState();
}

class _LoanViewState extends State<LoanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        title: const Text('İhtiyaç Kredisi'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: const Color(0xFFffffff),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: const Color(0xFFE5E5E5),
          ),
        ),
        child: const SearchLoan(
          isBottomSheet: false,
        ),
      ),
    );
  }
}
