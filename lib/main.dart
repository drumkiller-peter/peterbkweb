import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peterbk/configs/extensions/build_context_extension.dart';
import 'package:peterbk/configs/initializers/initialisers.dart';
import 'package:peterbk/configs/router/app_router.dart';
import 'package:peterbk/configs/theme/app_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(
        "isDesktop ${context.isDesktop} isCommonDesktop ${context.isCommonDesktop} isTablet ${context.isTablet} isWearable ${context.isWearable} isMobile ${context.isMobile} isPortrait ${context.isPortraitLike} width ${MediaQuery.of(context).size.width} height ${MediaQuery.of(context).size.height}");
    return ScreenUtilInit(
      designSize: _getDesignSize(context),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        title: "Peter Bk",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.secondaryColor,
          fontFamily: GoogleFonts.cutiveMono().fontFamily,
          textTheme: GoogleFonts.cutiveMonoTextTheme(),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }

  Size _getDesignSize(BuildContext context) {
    if (context.isDesktop) {
      return context.isPortraitLike
          ? const Size(834, 1194)
          : const Size(1194, 834);
    } else if (context.isTablet) {
      return context.isPortraitLike
          ? const Size(600, 1024)
          : const Size(1024, 600);
    } else if (context.isWearable) {
      return const Size(192, 192);
    } else {
      return context.isPortraitLike
          ? const Size(360, 690)
          : const Size(690, 360);
    }
  }
}
