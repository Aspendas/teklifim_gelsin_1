import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teklifim_gelsin_1/model/loan.dart';
import 'package:teklifim_gelsin_1/widgets/sponsored_offer.dart';

import '../viewmodel/loan.dart';
import 'search_loan.dart';

class LoanList extends StatelessWidget {
  const LoanList({super.key});

  @override
  Widget build(BuildContext context) {
    final loanViewModel = Provider.of<LoanViewModel>(context);
    int loanNumber = loanViewModel.getLoanNumber();
    List<ActiveOffers> activeOffers = loanViewModel.getActiveOffers();
    List<PassiveOffers> passiveOffers = loanViewModel.getPassiveOffers();
    List<SponsoredOffers> sponsoredOffers = loanViewModel.getSponsoredOffers();
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        title: const Text('İhtiyaç Kredileri'),
        centerTitle: true,
        backgroundColor: const Color(0xffF5F5F5),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("TL ${loanViewModel.loans.first.amount}"),
                    const SizedBox(
                      height: 12,
                      width: 12,
                      child: VerticalDivider(
                        color: Colors.black,
                      ),
                    ),
                    Text("${loanViewModel.loans.first.maturity} Ay"),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(36),
                              topRight: Radius.circular(36),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.linear_scale, size: 32),
                              SearchLoan(
                                isBottomSheet: true,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      border: Border.all(
                        color: Colors.black45,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.edit,
                          size: 14,
                          color: Colors.black45,
                        ),
                        Text(
                          "Aramayı Güncelle",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Sana özel toplam $loanNumber teklif var.",
            style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
          ),
          const SizedBox(height: 8),
          // Sponsored Offers
          ListView.builder(
            shrinkWrap: true,
            itemCount: sponsoredOffers.length,
            itemBuilder: (context, index) {
              final offer = sponsoredOffers[index];
              print(offer.bank?.toLowerCase());
              return SponsoredOffer(bankName: "akbank");
            },
          )
        ],
      ),
    );
  }
}
