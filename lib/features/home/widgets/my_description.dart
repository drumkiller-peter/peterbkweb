// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peterbk/configs/extensions/build_context_extension.dart';
import 'package:peterbk/configs/theme/app_colors.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({
    super.key,
    this.screenPadding,
  });

  final EdgeInsetsGeometry? screenPadding;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final textBoxWidth = context.isCommonMobile ? width * 0.7 : width * 0.25;
    return Padding(
      padding: screenPadding ??
          EdgeInsets.only(left: context.isCommonMobile ? 16.w : 112.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello.",
              style: GoogleFonts.cutiveMono(
                fontSize: context.isCommonMobile ? 22.sp : 127.sp,
                color: AppColors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              width: textBoxWidth,
              child: Text(
                "My name is Peter Bk ${MediaQuery.sizeOf(context).width} ${MediaQuery.sizeOf(context).height}",
                style: GoogleFonts.cutiveMono(
                  fontSize: context.isCommonMobile ? 15.sp : 20.sp,
                  color: AppColors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Gap(14.h),
            SizedBox(
              width: textBoxWidth,
              child: Text(
                "I am a Flutter developer with 4 years of experience in building cross-platform mobile apps. Currently at WebPoint Solutions, I specialize in creating intuitive interfaces and integrating APIs. Follow my Flutter insights on Instagram @highinflutter.",
                style: GoogleFonts.cutiveMono(
                  fontSize: context.isCommonMobile ? 15.sp : 20.sp,
                  color: AppColors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
