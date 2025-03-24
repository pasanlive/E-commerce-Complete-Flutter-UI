import 'package:flutter/material.dart';
import 'package:shop/screens/product/views/components/product_quantity.dart';

import '../constants.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    required this.price,
    this.title = "Buy Now",
    this.subTitle = "Sub Total",
    required this.press,  required this.onIncrement,  required this.onDecrement, this.quantity = 1,

  });

  final double price;
  final String title, subTitle;
  final VoidCallback press;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int quantity;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultBorderRadious / 2),
        child: SizedBox(
          height: 64,
          child: Material(
            color: primaryColor,
            clipBehavior: Clip.hardEdge,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(defaultBorderRadious),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subTitle,
                          style: const TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Rs.${(price*quantity).toStringAsFixed(2)}",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                ProductQuantity(
                  numOfItem: quantity,
                  onIncrement: () {
                    onIncrement();
                  },
                  onDecrement: () {
                    onDecrement();
                  },
                ),
                const SizedBox(width: 10,),
                Expanded(
                  flex: 3,
                  child: InkWell(
                    onTap: press,
                    child: Container(
                      alignment: Alignment.center,
                      height: double.infinity,
                      color: Colors.black.withOpacity(0.15),
                      child: Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
