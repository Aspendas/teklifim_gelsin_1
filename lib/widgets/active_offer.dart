import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/loan.dart';
import '../utils/launch_page.dart';
import '../utils/monthly_payment.dart';

class ActiveOffer extends StatelessWidget {
  const ActiveOffer({
    super.key,
    required this.bankImageUrl,
    required this.activeOffers,
    required this.loan,
  });
  final String bankImageUrl;
  final Loan loan;
  final ActiveOffers activeOffers;

  @override
  Widget build(BuildContext context) {
    double rate = activeOffers.interestRate ?? 0;
    double amount = loan.amount!.toDouble();
    double expiry = loan.maturity!.toDouble();
    double? totalInterestRate = rate * 0.013;
    String monthlyPayment =
        calculeteMonthlyPayment(amount, totalInterestRate, expiry);
    Uri url = Uri.parse(activeOffers.url!);

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFffffff),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: const Color(0xFFE5E5E5),
        ),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.network(
                bankImageUrl,
                height: 30,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Detaylar",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(Icons.arrow_forward_ios, size: 8),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    "Taksit",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "₺$monthlyPayment",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Oran",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "%$rate",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Maliyet",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "₺$amount",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
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
                launchPage(url);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.open_in_new,
                    size: 18,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Başvur",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
