import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peterbk/configs/theme/app_colors.dart';

class MainWorkBody extends StatelessWidget {
  const MainWorkBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        final imageWidget = Image.network(
          "https://picsum.photos/800/9$index",
          height: 300,
          width: 493,
          fit: BoxFit.cover,
        );
        final textWidget = SizedBox(
          height: 300,
          width: 493,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ABC",
                  style: GoogleFonts.quicksand(
                    fontSize: 130,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Reprehenderit qui do consectetur id ad consectetur voluptate amet qui minim officia. Velit aute mollit minim sit est aute irure aliquip Lorem. Officia duis deserunt irure officia do. Proident velit magna quis officia occaecat veniam. Lorem reprehenderit elit enim ea excepteur.",
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: AppColors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
        return Row(
          children: [
            index.isEven ? imageWidget : textWidget,
            index.isOdd ? imageWidget : textWidget,
          ],
        );
      },
    );
  }
}
