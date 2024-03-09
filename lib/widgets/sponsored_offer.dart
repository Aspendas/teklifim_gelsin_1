import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SponsoredOffer extends StatelessWidget {
  const SponsoredOffer({super.key, required this.bankName});
  final String bankName;

  @override
  Widget build(BuildContext context) {
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
                "https://cdn.teklifimgelsin.com/newbanks/$bankName.svg",
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
        ],
      ),
    );
  }
}
