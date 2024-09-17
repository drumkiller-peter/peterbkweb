// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peterbk/configs/theme/app_colors.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 112.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello.",
            style: GoogleFonts.quicksand(
              fontSize: 127.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            "My name is Peter Bk",
            style: GoogleFonts.quicksand(
              fontSize: 20.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          Gap(14.h),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Text(
              "I am a Flutter developer with 4 years of experience in building cross-platform mobile apps. Currently at WebPoint Solutions, I specialize in creating intuitive interfaces and integrating APIs. Follow my Flutter insights on Instagram @highinflutter.",
              style: GoogleFonts.quicksand(
                fontSize: 20.sp,
                color: AppColors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
