import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/loan.dart';

class LoanView extends StatefulWidget {
  const LoanView({super.key});

  @override
  State<LoanView> createState() => _LoanViewState();
}

class _LoanViewState extends State<LoanView> {
  double _amountSliderValue = 30000;
  double _maturitySliderValue = 12;

  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _maturityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loanViewModel = Provider.of<LoanViewModel>(context);
    _amountController.text = _amountSliderValue.toInt().toString();
    _maturityController.text = _maturitySliderValue.toInt().toString();

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Icon(
                  size: 24,
                  Icons.info_outline,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  // Amount
                  TextFormField(
                    controller: _amountController,
                    onChanged: (value) {
                      setState(() {
                        _amountSliderValue = double.parse(value);
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.monetization_on_outlined),
                      suffixIcon: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.cyan.shade100.withOpacity(0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                            color: const Color(0xFFE5E5E5),
                          ),
                        ),
                        child: const Text(
                          "Tutar",
                          style: TextStyle(
                              color: Color(0xFF3BB4AB),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF3BB4AB),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE5E5E5),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  Slider(
                    thumbColor: const Color(0xFF3BB4AB),
                    activeColor: const Color(0xFF3BB4AB),
                    value: _amountSliderValue,
                    max: 300000,
                    divisions: 300,
                    onChanged: (double value) {
                      setState(() {
                        _amountSliderValue = value;
                      });
                    },
                  ),
                  // Maturity
                  TextFormField(
                    controller: _maturityController,
                    onChanged: (value) {
                      setState(() {
                        _maturitySliderValue = double.parse(value);
                      });
                    },
                    decoration: InputDecoration(
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.info_outline,
                              size: 24,
                              color: Colors.black45,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.cyan.shade100.withOpacity(0.5),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              border: Border.all(
                                color: const Color(0xFFE5E5E5),
                              ),
                            ),
                            child: const Text(
                              "Vade",
                              style: TextStyle(
                                  color: Color(0xFF3BB4AB),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF3BB4AB),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE5E5E5),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      tickMarkShape:
                          const RoundSliderTickMarkShape(tickMarkRadius: 0),
                    ),
                    child: Slider(
                      activeColor: const Color(0xFF3BB4AB),
                      value: _maturitySliderValue,
                      max: 36,
                      divisions: 36,
                      onChanged: (double value) {
                        setState(() {
                          _maturitySliderValue = value;
                        });
                      },
                    ),
                  ),
                  // Submit Button
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFF3BB4AB),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Text(
                        "TeklifimGelsin",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  // dummy data visualization
                  Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: loanViewModel.loans.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(loanViewModel.loans[index].id.toString()),
                          subtitle: Text(
                              loanViewModel.loans[index].amount.toString()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
