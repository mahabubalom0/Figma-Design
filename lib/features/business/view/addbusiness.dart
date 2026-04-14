import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
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
          padding: const EdgeInsets.only(left: AppDimensions.paddingL),
          child: Container(
            height: getHeight(AppDimensions.weight45),
            width: getWidth(AppDimensions.weight45),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.elevatedSurfaceLight,
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: getWidth(AppDimensions.paddingM),
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: AppDimensions.spaceXL,
                  color: AppColors.backgroundDark.withAlpha(150),
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
            Image.asset(
              ImagePath.sopping,
              width: getWidth(AppDimensions.weight64),
              height: getHeight(AppDimensions.weight64),
            ),
            SizedBox(height: getHeight(AppDimensions.paddingL)),

            Text(AppStrings.listBusiness.tr, style: Textstyles().leargertext()),
            SizedBox(height: AppDimensions.paddingM),
            Text(
              "Get discovered by thousands \n of Jacksonville locals",
              textAlign: TextAlign.center,
              style: Textstyles().textL(fontsize: AppDimensions.fontS),
            ),
            SizedBox(height: AppDimensions.paddingXL),
            Text(
              AppStrings.stating.tr,
              style: GoogleFonts.dmSans(
                fontSize: AppDimensions.fontM,
                fontWeight: FontWeight.w600,
                color: AppColors.backgroundDark.withValues(alpha: 0.9),
              ),
            ),

            SizedBox(height: AppDimensions.paddingM),
            Padding(
              padding: EdgeInsetsGeometry.only(
                top: getHeight(AppDimensions.radiusL),
                bottom: getHeight(AppDimensions.radiusL),
                left: getWidth(AppDimensions.radius92),
                right: getWidth(AppDimensions.radius92),
              ),
              child: GestureDetector(
                onTap: () => Get.toNamed(AppRoutes.businesspage),
                child: Container(
                  height: getHeight(AppDimensions.weight45),
                  decoration: BoxDecoration(
                    color: AppColors.buttoncolor,
                    borderRadius: BorderRadius.circular(AppDimensions.radius32),
                  ),

                  child: Center(
                    child: Text(
                      AppStrings.get_start.tr,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: AppDimensions.fontM,
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
