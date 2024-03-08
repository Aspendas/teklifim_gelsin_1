import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Import the model classes
import '/model/loan.dart';

class LoanViewModel extends ChangeNotifier {
  List<Loan> _loans = [];

  List<Loan> get loans => _loans;

  LoanViewModel() {
    fetchLoans();
  }

  Future<void> fetchLoans() async {
    final response = await http.get(Uri.parse(
        'https://api2.teklifimgelsin.com/api/getLoanOffers?kredi_tipi=0&vade=22&tutar=65000'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      if (jsonData is Map<String, dynamic>) {
        // Handle the JSON data as a Map
        _loans = [Loan.fromJson(jsonData)];
      } else if (jsonData is List) {
        // Handle the JSON data as a List
        _loans = jsonData.map((data) => Loan.fromJson(data)).toList();
      } else {
        _loans = [];
      }
      print(_loans.toString() + "xxxxxxx");
      notifyListeners();
    } else {
      throw Exception('Failed to load loans');
    }
  }

  Future<void> fetchLoans2() async {
    final response = await http.get(Uri.parse(
        'https://api2.teklifimgelsin.com/api/getLoanOffers?kredi_tipi=0&vade=5&tutar=54000'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      if (jsonData is Map<String, dynamic>) {
        // Handle the JSON data as a Map
        _loans = [Loan.fromJson(jsonData)];
      } else if (jsonData is List) {
        // Handle the JSON data as a List
        _loans = jsonData.map((data) => Loan.fromJson(data)).toList();
      } else {
        _loans = [];
      }
      print("2");
      notifyListeners();
    } else {
      throw Exception('Failed to load loans');
    }
  }
}
