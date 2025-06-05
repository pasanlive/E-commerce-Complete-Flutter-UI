import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';
import 'product_availability_tag.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.title,
    required this.brand,
    required this.description,
    required this.rating,
    required this.numOfReviews,
    required this.isAvailable, required this.price, this.priceAfetDiscount, this.discountPercent,
  });

  final String title, brand, description;
  final double rating;
  final int numOfReviews;
  final bool isAvailable;
  final double price;
  final double? priceAfetDiscount;
  final int? discountPercent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            brand.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: defaultPadding / 2),
          Text(
            title,
            maxLines: 2,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          priceAfetDiscount != null
              ? Row(
            children: [
              Text(
                "Rs.${priceAfetDiscount?.toStringAsFixed(2)}",
                style: const TextStyle(
                  color: Color(0xFF31B0D8),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: defaultPadding / 4),
              Text(
                "Rs.${price.toStringAsFixed(2)}",
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .color,
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          )
              : Text(
            "Rs.${price.toStringAsFixed(2)}",
            style: const TextStyle(
              color: Color(0xFF31B0D8),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              ProductAvailabilityTag(isAvailable: isAvailable),
              const Spacer(),
              // SvgPicture.asset("assets/icons/Star_filled.svg"),
              // const SizedBox(width: defaultPadding / 4),
              // Text(
              //   "$rating ",
              //   style: Theme.of(context).textTheme.bodyLarge,
              // ),
              // Text("($numOfReviews Reviews)")
            ],
          ),
          const SizedBox(height: defaultPadding),

        ],
      ),
    );
  }
}
