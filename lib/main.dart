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
    print("isDesktop ${context.isDesktop}");
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
    if (context.isLargeDesktop) {
      return const Size(1400, 900);
    } else if (context.isDesktop) {
      return const Size(1200, 800);
    } else if (context.isTablet) {
      return const Size(992, 768);
    } else if (context.isLargeMobile) {
      return const Size(768, 600);
    } else if (context.isStandardMobile) {
      return const Size(576, 480);
    } else if (context.isSmallMobile) {
      return const Size(280, 500);
    } else {
      // Wearables and small mobile devices
      return const Size(280, 280);
    }
  }
}
