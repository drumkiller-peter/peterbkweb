// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peterbk/configs/theme/app_colors.dart';

class TabsMenuItem extends StatelessWidget {
  const TabsMenuItem({
    super.key,
    required this.isSelected,
    required this.text,
    this.onPressed,
  });

  final bool isSelected;

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.quicksand(
          fontSize: 32.sp,
          fontWeight: FontWeight.w500,
          color: isSelected
              ? AppColors.primaryColorStroke
              : AppColors.textDisabled,
          decoration: isSelected ? TextDecoration.underline : null,
          decorationColor: AppColors.primaryColorStroke,
          decorationThickness: 1,
        ),
      ),
    );
  }
}
