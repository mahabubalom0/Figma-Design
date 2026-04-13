import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import '../../../routes/app_routes.dart';

class Addbusiness extends StatelessWidget {
  const Addbusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.elevatedSurfaceLight,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: AppDimensions.spaceXL,
                  color: AppColors.backgroundDark,
                ),
              ),
            ),
          ),
        ),
        title: Text("Add Business", style: Textstyles().medialtext()),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImagePath.sopping, width: 64, height: 64),
            SizedBox(height: 16),

            Text("List Your Business", style: Textstyles().leargertext()),
            SizedBox(height: 10),
            Text(
              "Get discovered by thousands \n of Jacksonville locals",
              textAlign: TextAlign.center,
              style: Textstyles().textL(fontsize: 14),
            ),
            SizedBox(height: 18),
            Text("Starting at \$10/month", style: Textstyles().textL()),

            SizedBox(height: 10),
            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 12,
                bottom: 12,
                left: 92,
                right: 92,
              ),
              child: GestureDetector(
                onTap: () => Get.toNamed(AppRoutes.addbusinessfrome),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF006778),
                    borderRadius: BorderRadius.circular(32),
                  ),

                  child: Center(
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 15,
                        color: AppColors.backgroundLight,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
