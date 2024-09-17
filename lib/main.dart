import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peterbk/configs/extensions/build_context_extension.dart';
import 'package:peterbk/configs/router/app_router.dart';
import 'package:peterbk/configs/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: context.isDesktop
          ? const Size(1920, 1080)
          : context.isTablet
              ? const Size(768, 1024)
              : const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        title: "Peter Bk",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.secondaryColor,
          fontFamily: GoogleFonts.quicksand().fontFamily,
          textTheme: GoogleFonts.quicksandTextTheme(),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
