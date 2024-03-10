import 'package:flutter/material.dart';

import '../utils/launch_page.dart';

class OfferAd extends StatelessWidget {
  const OfferAd({super.key, required this.adImageUrl, required this.adUrl});
  final String adImageUrl;
  final Uri adUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchPage(adUrl);
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFffffff),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: const Color(0xFFE5E5E5),
          ),
        ),
        margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Image.network(
            adImageUrl,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
