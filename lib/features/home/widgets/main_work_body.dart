import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peterbk/configs/theme/app_colors.dart';
import 'package:peterbk/features/home/bloc/home_bloc.dart';
import 'package:peterbk/gen/assets.gen.dart';

class MainWorkBody extends StatelessWidget {
  const MainWorkBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.homeStateEnum == HomeStateEnum.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.homeStateEnum == HomeStateEnum.error) {
          return Center(
            child: Text(state.error!),
          );
        }

        if (state.homeStateEnum == HomeStateEnum.loaded) {
          final workList = state.workList!;
          final contentHeight = 300.h;
          final contentWidth = 493.w;
          return ListView.builder(
            itemCount: workList.length,
            itemBuilder: (context, index) {
              final imageWidget = Container(
                color: AppColors.textDisabled.withOpacity(0.1),
                padding: const EdgeInsets.all(8.0),
                height: contentHeight,
                width: contentWidth,
                child: workList[index].imageUrl.isEmpty
                    ? SvgPicture.asset(
                        Assets.images.svg.logo,
                      )
                    : Image.network(
                        workList[index].imageUrl,
                      ),
              );
              final textWidget = SizedBox(
                height: contentHeight,
                width: contentWidth,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        workList[index].projectName,
                        style: GoogleFonts.quicksand(
                          fontSize: 54.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Gap(4.h),
                      Expanded(
                        child: Text(
                          workList[index].description,
                          style: GoogleFonts.quicksand(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                            color: AppColors.white,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
              final item = Row(
                children: [
                  index.isEven ? imageWidget : textWidget,
                  index.isOdd ? imageWidget : textWidget,
                ],
              );
              return InkWell(
                onTap: () {
                  showGeneralDialog(
                      context: context,
                      barrierLabel: "Hello",
                      barrierDismissible: true,
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return Dialog(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5.w,
                            height: MediaQuery.of(context).size.height * 0.5.w,
                            child: Material(child: item),
                          ),
                        );
                      });
                },
                child: item,
              );
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
