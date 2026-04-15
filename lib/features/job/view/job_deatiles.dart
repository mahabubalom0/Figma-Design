import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

import '../../../core/utils/app_images.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/custom_svg_icon.dart';

class Jobdeatiles extends StatelessWidget {
  const Jobdeatiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: AppDimensions.radiusCircular,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Padding(
            padding: const EdgeInsets.only(left: AppDimensions.paddingL),
            child: Container(
              height: AppDimensions.paddingHUGEXXY,
              width: AppDimensions.paddingHUGEXXY,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.elevatedSurfaceLight,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: AppDimensions.radiusM),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: AppDimensions.spaceXL,
                    color: AppColors.backgroundDark,
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Text(
          "Job details",
          style: TextStyle(
            color: AppColors.backgroundDark,
            fontSize: AppDimensions.fontXL,
            fontFamily: "Means",
          ),
        ),
        actions: [
          CustomSvgIcon(
            assetName: ImagePath.share,
            width: AppDimensions.fontXXXL,
            height: AppDimensions.fontXXXL,
            color: AppColors.backgroundDark.withAlpha(180),
          ),
          SizedBox(width: AppDimensions.fontXL),
          Icon(
            Icons.favorite_border,
            color: AppColors.backgroundDark.withAlpha(150),
            size: AppDimensions.fontXL,
          ),
          SizedBox(width: AppDimensions.radiusXL),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              margin: EdgeInsetsGeometry.only(top: AppDimensions.paddingYS),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  CustomSvgIcon(assetName: ImagePath.w, width: AppDimensions.ImageXXXS, height: AppDimensions.ImageXXXS),
                  SizedBox(height: AppDimensions.paddingYS),
                  Text(
                    "Project Manager",
                    style: TextStyle(
                      fontSize: AppDimensions.fontXXXL,
                      fontFamily: "Means",

                      color: AppColors.backgroundDark,
                    ),
                  ),
                  Text(
                    "Jacksonville, Florida",
                    style: GoogleFonts.dmSans(
                      fontSize: AppDimensions.fontS,
                      color: Color(0xFF00171D).withAlpha(180),
                    ),
                  ),
                  SizedBox(height: AppDimensions.paddingXL),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.only(
                          top: AppDimensions.paddingYS,
                          bottom: AppDimensions.paddingYS,
                          start: AppDimensions.paddingSX,
                          end: AppDimensions.paddingSX,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppDimensions.iconXL,
                          ),
                          color: AppColors.jobmistirostcolor.withAlpha(100),
                          border: BoxBorder.all(
                            color: AppColors.jobmistirostcolor,
                            width: AppDimensions.weight1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Part Time",
                            style: GoogleFonts.dmSans(
                              color: AppColors.errorDark,
                              fontSize: AppDimensions.radiusM,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: AppDimensions.spaceM),
                      Container(
                        padding: EdgeInsetsDirectional.only(
                          top: AppDimensions.paddingYS,
                          bottom: AppDimensions.paddingYS,
                          start: AppDimensions.paddingSX,
                          end: AppDimensions.paddingSX,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppDimensions.iconXL,
                          ),
                          color: AppColors.joblightskyblur.withAlpha(100),
                          border: BoxBorder.all(
                            color: AppColors.joblightskyblur,
                            width: AppDimensions.weight1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Senior Level",
                            style: GoogleFonts.dmSans(
                              color: Color(0xFF0071b7),
                              fontSize: AppDimensions.radiusM,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: AppDimensions.spaceM),
                      Container(
                        padding: EdgeInsetsDirectional.only(
                          top: AppDimensions.paddingYS,
                          bottom: AppDimensions.paddingYS,
                          start: AppDimensions.paddingSX,
                          end: AppDimensions.paddingSX,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppDimensions.iconXL,
                          ),
                          color: AppColors.joblightminigreen.withAlpha(100),
                          border: BoxBorder.all(
                            color: AppColors.joblightminigreen,
                            width: AppDimensions.weight1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "3-6 yrs Experience",
                            style: GoogleFonts.dmSans(
                              color: AppColors.successLight,
                              fontSize: AppDimensions.radiusM,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppDimensions.paddingS),
                  Container(
                    width: AppDimensions.skeletonWidthMedium,
                    padding: EdgeInsetsGeometry.only(
                      top:AppDimensions.paddingYS,
                      bottom: AppDimensions.paddingYS,
                      right: AppDimensions.paddingS,
                      left: AppDimensions.paddingS,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppDimensions.radiusXXL,
                      ),
                      color: AppColors.joblightLavender.withAlpha(100),
                      border: BoxBorder.all(
                        color: AppColors.joblightLavender,
                        width: AppDimensions.weight1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "\$200-\$250",
                        style: GoogleFonts.dmSans(
                          color: AppColors.joblightLavendertext,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppDimensions.paddingXL),
                  Container(
                    margin: EdgeInsetsGeometry.symmetric(horizontal: AppDimensions.paddingHUGEY),
                    padding: EdgeInsetsGeometry.only(
                      top: AppDimensions.paddingM,
                      bottom: AppDimensions.paddingM,
                      left: AppDimensions.paddingL,
                      right: AppDimensions.paddingL,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(AppDimensions.radiusXXXL),
                      color: Color(0xff006778),
                    ),
                    child: Center(
                      child: Text(
                        "Apply Now",
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.backgroundLight,
                          fontSize: AppDimensions.fontS,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: AppDimensions.paddingL, right: AppDimensions.paddingL,),
                    child: Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About us",
                            style: TextStyle(
                              fontSize: AppDimensions.fontXL,

                              fontFamily: "Means",
                              color: AppColors.backgroundDark,
                            ),
                          ),
                          SizedBox(height: AppDimensions.paddingM),
                          Text(
                            "We believe local communities thrive when people can easily "
                            "discover what’s happening around them, support small businesses, find local jobs, and"
                            " stay connected to their city. That’s why we built a community-first platform designed "
                            "specifically for Jacksonville and the 904.",
                            style: GoogleFonts.dmSans(
                              fontSize: AppDimensions.fontS,
                              color: AppColors.backgroundDark.withAlpha(180),
                            ),
                          ),
                          SizedBox(height: AppDimensions.paddingXL),
                          Text(
                            "Job Details",
                            style: TextStyle(
                              fontSize: AppDimensions.fontXL,
                              fontFamily: "Means",
                              color: AppColors.backgroundDark,
                            ),
                          ),
                          SizedBox(height: AppDimensions.paddingM),
                          Text(
                            "We’re seeking a detail-oriented Project Manager to lead local projects from planning through completion. This role works closely with internal teams, vendors, and clients to ensure projects are delivered on time, within scope, and on budget.",
                            style: GoogleFonts.dmSans(
                              fontSize: AppDimensions.fontS,
                              color: AppColors.backgroundDark.withAlpha(180),
                            ),
                          ),
                          SizedBox(height: AppDimensions.paddingXL),
                          Text(
                            "Qualification",
                            style: TextStyle(
                              fontSize: AppDimensions.fontXL,

                              fontFamily: "Means",
                              color: AppColors.backgroundDark,
                            ),
                          ),

                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.only(left: AppDimensions.paddingL),
                            child: Column(
                              children: [
                                _buildBulletPoint(
                                  '''Live, work, study, or do business in Jacksonville''',
                                ),
                                _buildBulletPoint(
                                  "Want to stay informed about local updates, events, and opportunities",
                                ),
                                _buildBulletPoint(
                                  "Support local businesses and community initiatives",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: AppDimensions.paddingXL),
                          Text(
                            "Benefits",
                            style: TextStyle(
                              fontSize: AppDimensions.fontXL,

                              fontFamily: "Means",
                              color: AppColors.backgroundDark,
                            ),
                          ),
                          SizedBox(height: AppDimensions.paddingM),
                          Padding(
                            padding: const EdgeInsets.only(left: AppDimensions.paddingL),
                            child: Column(
                              children: [
                                _buildBulletPoint(
                                  "Operate in or serve the Jacksonville area",
                                ),
                                _buildBulletPoint(
                                  "Provide accurate and up-to-date business information",
                                ),
                                _buildBulletPoint(
                                  "Agree to community guidelines and listing standards",
                                ),
                                _buildBulletPoint(
                                  "Maintain an active subscription for published listings",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: AppDimensions.paddingXL),
                          Container(
                            height: AppDimensions.skeletonWidthLargX,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.circular(AppDimensions.radiusL),
                              color: AppColors.elevatedSurfaceLight,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(AppDimensions.radiusXL),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: AppDimensions.paddingHUGEY,
                                        width: AppDimensions.paddingHUGEY,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            AppDimensions.radiusYYLX,
                                          ),
                                          color: AppColors.backgroundDark
                                              .withAlpha(20),
                                        ),
                                        child: CustomSvgIcon(
                                          assetName: ImagePath.w,
                                          width: AppDimensions.paddingXXL,
                                          height: AppDimensions.paddingXXL,
                                        ),
                                      ),
                                      SizedBox(width: AppDimensions.paddingM),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "CMG3Tech",
                                            style: Textstyles().text400(
                                              color: AppColors.backgroundDark,
                                              fontsize: AppDimensions.fontS,
                                            ),
                                          ),
                                          Text(
                                            "Jacksonville, Florida",
                                            style: Textstyles().textsmall(
                                              fontsize: AppDimensions.fontXS,
                                              color: AppColors.backgroundDark
                                                  .withAlpha(180),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: AppDimensions.paddingL),
                                  Divider(),
                                  SizedBox(height: AppDimensions.paddingL),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "15 Jan",
                                            style: Textstyles().text400(
                                              color: AppColors.backgroundDark,
                                            ),
                                          ),
                                          Text(
                                            "Job Post",
                                            style: Textstyles().textsmall(
                                              color: AppColors.backgroundDark
                                                  .withAlpha(150),
                                              fontsize: AppDimensions.fontS,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: AppDimensions.paddingHUGEY,
                                        child: VerticalDivider(
                                          thickness: 1,

                                          color: AppColors.backgroundDark
                                              .withAlpha(50),
                                        ),
                                      ),

                                      Column(
                                        children: [
                                          Text(
                                            "5",
                                            style: Textstyles().text400(
                                              color: AppColors.backgroundDark,
                                            ),
                                          ),
                                          Text(
                                            "Vacancy",
                                            style: Textstyles().textsmall(
                                              color: AppColors.backgroundDark
                                                  .withAlpha(150),
                                              fontsize: AppDimensions.fontS,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: AppDimensions.paddingHUGEY,
                                        child: VerticalDivider(
                                          thickness: 1,
                                          color: AppColors.backgroundDark
                                              .withAlpha(50),
                                        ),
                                      ),

                                      Column(
                                        children: [
                                          Text(
                                            "15 Feb",
                                            style: Textstyles().text400(
                                              color: AppColors.backgroundDark,
                                            ),
                                          ),
                                          Text(
                                            "Deadline",
                                            style: Textstyles().textsmall(
                                              color: AppColors.backgroundDark
                                                  .withAlpha(150),
                                              fontsize: AppDimensions.fontS,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(AppDimensions.paddingXL),
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentGeometry.centerLeft,
                          child: Text(
                            "Contact Info",
                            style: TextStyle(
                              fontFamily: "Means",
                              fontSize: AppDimensions.fontL,
                              color: AppColors.backgroundDark,
                            ),
                          ),
                        ),
                        SizedBox(height: AppDimensions.paddingM),
                        _contactdesign(
                          CustomSvgIcon(
                            assetName: ImagePath.word,
                            width: AppDimensions.paddingXL,
                            height: AppDimensions.paddingXL,
                          ),
                          "www.cmg3tech.com",
                        ),
                        SizedBox(height: AppDimensions.paddingM),
                        _contactdesign(
                          CustomSvgIcon(
                            assetName: ImagePath.Location,
                            width: AppDimensions.paddingXL,
                            height: AppDimensions.paddingXL,
                          ),
                          "Downtown Jacksonville, Florida",
                        ),
                        SizedBox(height: AppDimensions.paddingHUGEY),
                        InkWell(
                          onTap: () {
                            Get.snackbar("Click", "Apply Successfully");
                          },
                          child: Container(
                            padding: EdgeInsetsGeometry.only(
                              top: AppDimensions.paddingM,
                              bottom: AppDimensions.paddingM,
                              left: AppDimensions.paddingL,
                              right: AppDimensions.paddingL,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.circular(AppDimensions.radiusXXXL),
                              color: Color(0xff006778),
                            ),
                            child: Center(
                              child: CustomText(
                                text: "Apply Now",
                                color: AppColors.backgroundLight,
                                fontSize: AppDimensions.fontS,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _contactdesign(Widget icons, String text) {
    return Row(
      children: [
        icons,
        SizedBox(width: AppDimensions.paddingM),
        Text(
          text,
          style: Textstyles().textsmall(
            color: AppColors.backgroundDark.withAlpha(180),
            fontsize: AppDimensions.fontS,
          ),
        ),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimensions.paddingXS),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "•",
            style: TextStyle(
              fontSize: AppDimensions.fontS,
              color: AppColors.backgroundDark.withAlpha(180),
            ),
          ),
          SizedBox(width: AppDimensions.paddingM),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.dmSans(
                fontSize: AppDimensions.fontS,
                color: AppColors.backgroundDark.withAlpha(180),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
