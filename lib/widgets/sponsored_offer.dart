import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/loan.dart';
import '../utils/launch_page.dart';
import '../utils/monthly_payment.dart';

class SponsoredOffer extends StatelessWidget {
  const SponsoredOffer(
      {super.key, required this.bankImageUrl, required this.sponsoredOffers});
  final String bankImageUrl;
  final SponsoredOffers sponsoredOffers;

  @override
  Widget build(BuildContext context) {
    double rate = 0;
    double amount = 10000;
    double expiry = 6;
    double? totalInterestRate = rate * 0.013;
    String monthlyPayment =
        calculeteMonthlyPayment(amount, totalInterestRate, expiry);
    Uri url = Uri.parse(sponsoredOffers.adUtmLink!);

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Reklam",
                    style: TextStyle(
                      color: Colors.green.shade400,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                    width: 12,
                    child: VerticalDivider(),
                  ),
                  const Text(
                    "Detaylar",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 8),
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
                    "Aylık Taksit",
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
                    "Faiz Oranı",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "%${rate.toInt()}",
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
                    "Toplam Tutar",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "₺${amount.toInt()}",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.open_in_new,
                    size: 18,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    sponsoredOffers.adButtonText ?? "Hemen Başvur!",
                    style: const TextStyle(
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
