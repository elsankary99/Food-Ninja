import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class CustomPassFormField extends StatefulWidget {
  final String hint;
  final String? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomPassFormField({
    super.key,
    required this.hint,
    this.validator,
    this.controller,
    this.prefixIcon,
  });

  @override
  State<CustomPassFormField> createState() => _CustomPassFormFieldState();
}

class _CustomPassFormFieldState extends State<CustomPassFormField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      obscureText: isObscure,
      cursorColor: AppColors.deepGreen,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () => setState(() => isObscure = !isObscure),
            icon: Icon(
              isObscure ? Icons.visibility_off_sharp : Icons.visibility,
              color: isObscure ? Colors.grey : AppColors.green,
            )),
        prefixIcon: widget.prefixIcon != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: SvgPicture.asset(
                  widget.prefixIcon!,
                ),
              )
            : null,
        hintText: widget.hint,
        hintStyle: context.textTheme.labelSmall!
            .copyWith(color: Colors.grey.withOpacity(0.6)),
        fillColor: Theme.of(context).disabledColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.grey.withOpacity(0.2), width: 1.6),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColors.green.withOpacity(0.3), width: 1.6),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
