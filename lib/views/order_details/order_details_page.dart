import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/order_details/widgets/order_card.dart';
import 'package:food_ninja/views/order_details/widgets/prices_card.dart';
import 'package:food_ninja/views/widgets/background_image.dart';
import 'package:food_ninja/views/widgets/custom_back_button.dart';

@RoutePage()
class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundFruitsImage(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButton(),
                SizedBox(height: 16.h),
                Text(
                  'Order details',
                  style: context.textTheme.labelMedium,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => const OrderCard(),
                  ),
                ),
                const PricesCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
