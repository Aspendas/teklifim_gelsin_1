import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Import the model classes
import '/model/loan.dart';

class LoanViewModel extends ChangeNotifier {
  List<Loan> _loans = [];

  List<Loan> get loans => _loans;

  Future<void> fetchLoans(String maturity, String amount,
      {int type = 0}) async {
    log('fetchLoans: $maturity, $amount, $type');
    final response = await http.get(
      Uri.parse(
          'https://api2.teklifimgelsin.com/api/getLoanOffers?kredi_tipi=$type&vade=$maturity&tutar=$amount'),
    );
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      if (jsonData is Map<String, dynamic>) {
        _loans = [Loan.fromJson(jsonData)];
      } else if (jsonData is List) {
        _loans = jsonData.map((data) => Loan.fromJson(data)).toList();
      } else {
        _loans = [];
      }
      notifyListeners();
    }
  }

  getLoanNumber() {
    int count = 0;
    count = (_loans.first.activeOffers?.length ?? 0) +
        (_loans.first.passiveOffers?.length ?? 0) +
        (_loans.first.sponsoredOffers?.length ?? 0);
    return count;
  }

  getActiveOffers() {
    return _loans.first.activeOffers;
  }

  getPassiveOffers() {
    return _loans.first.passiveOffers;
  }

  getSponsoredOffers() {
    return _loans.first.sponsoredOffers;
  }
}
