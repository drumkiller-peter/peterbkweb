import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peterbk/configs/theme/app_colors.dart';
import 'package:peterbk/features/home/bloc/home_bloc.dart';
import 'package:peterbk/gen/assets.gen.dart';

class SSWorkBody extends StatelessWidget {
  const SSWorkBody({super.key});

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

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, // Adjust the number of columns as needed
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 2.5, // Adjust this ratio as needed
            ),
            itemCount: workList.length,
            itemBuilder: (context, index) {
              final imageWidget = Padding(
                padding: const EdgeInsets.all(8.0),
                child: workList[index].imageUrl.isEmpty
                    ? SvgPicture.asset(
                        Assets.images.svg.logo,
                      )
                    : Image.network(
                        workList[index].imageUrl,
                      ),
              );
              final textWidget = Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      "${index + 1}. ${workList[index].projectName}",
                      style: GoogleFonts.cutiveMono(
                        fontSize: 20.sp,
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
                        style: GoogleFonts.cutiveMono(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          color: AppColors.white,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
              final item = Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: index.isEven ? imageWidget : textWidget),
                  Expanded(child: index.isOdd ? imageWidget : textWidget),
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
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Material(
                                color: AppColors.secondaryColor, child: item),
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
