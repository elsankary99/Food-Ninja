import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
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
                    itemBuilder: (context, index) => Dismissible(
                      direction: DismissDirection.endToStart,
                      key: Key(index.toString()),
                      background: Container(
                        alignment: AlignmentDirectional.centerEnd,
                        padding: EdgeInsetsDirectional.only(end: 28.w),
                        decoration: const BoxDecoration(
                          color: AppColors.orange,
                          borderRadius: BorderRadiusDirectional.horizontal(
                            end: Radius.circular(15),
                          ),
                        ),
                        child: const Icon(
                          FontAwesomeIcons.trashCan,
                          color: Colors.white,
                        ),
                      ),
                      child: const OrderCard(),
                    ),
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
