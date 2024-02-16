import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';

import 'package:food_ninja/views/order_details/widgets/order_button.dart';
import 'package:food_ninja/views/order_details/widgets/order_price_title.dart';

class PricesCard extends StatelessWidget {
  const PricesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage(Assets.assetsImagesPaymentCard),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          OrderPriceTitle(
            context,
            title: 'Sub-Total',
            price: '',
          ),
          const SizedBox(height: 4),
          OrderPriceTitle(
            context,
            title: 'Delivery Charge',
            price: '',
          ),
          const SizedBox(height: 4),
          OrderPriceTitle(
            context,
            title: 'Discount',
            price: '',
          ),
          const SizedBox(height: 8),
          OrderPriceTitle.total(
            context,
            title: 'Total',
            price: '',
          ),
          const SizedBox(height: 10),
          OrderButton(onTap: () {}, title: 'Place My Order'),
        ],
      ),
    );
  }
}
