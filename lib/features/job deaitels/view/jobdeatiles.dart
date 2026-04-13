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
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Padding(
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
        ),
        title: Text(
          "Job details",
          style: TextStyle(
            color: AppColors.backgroundDark,
            fontSize: 18,
            fontFamily: "Means",
          ),
        ),
        actions: [
          CustomSvgIcon(
            assetName: ImagePath.share,
            width: 24,
            height: 24,
            color: AppColors.backgroundDark.withAlpha(180),
          ),
          SizedBox(width: 18),
          Icon(
            Icons.favorite_border,
            color: AppColors.backgroundDark.withAlpha(150),
            size: 24,
          ),
          SizedBox(width: 15),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              margin: EdgeInsetsGeometry.only(top: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  CustomSvgIcon(assetName: ImagePath.w, width: 64, height: 64),
                  SizedBox(height: 20),
                  Text(
                    "Project Manager",
                    style: TextStyle(
                      fontSize: 24,
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.only(
                          top: 2,
                          bottom: 2,
                          start: 6,
                          end: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppDimensions.iconXL,
                          ),
                          color: AppColors.jobmistirostcolor.withAlpha(100),
                          border: BoxBorder.all(
                            color: AppColors.jobmistirostcolor,
                            width: 1.0,
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
                          top: 2,
                          bottom: 2,
                          start: 6,
                          end: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppDimensions.iconXL,
                          ),
                          color: AppColors.joblightskyblur.withAlpha(100),
                          border: BoxBorder.all(
                            color: AppColors.joblightskyblur,
                            width: 1.0,
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
                          top: 2,
                          bottom: 2,
                          start: 6,
                          end: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppDimensions.iconXL,
                          ),
                          color: AppColors.joblightminigreen.withAlpha(100),
                          border: BoxBorder.all(
                            color: AppColors.joblightminigreen,
                            width: 1.0,
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
                  SizedBox(height: 8),
                  Container(
                    width: 150,
                    padding: EdgeInsetsGeometry.only(
                      top: 2,
                      bottom: 2,
                      right: 8,
                      left: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppDimensions.radiusXXL,
                      ),
                      color: AppColors.joblightLavender.withAlpha(100),
                      border: BoxBorder.all(
                        color: AppColors.joblightLavender,
                        width: 1.0,
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
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsetsGeometry.symmetric(horizontal: 40),
                    padding: EdgeInsetsGeometry.only(
                      top: 12,
                      bottom: 12,
                      left: 16,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(60),
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
                    padding: EdgeInsetsGeometry.only(left: 15, right: 15),
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
                          SizedBox(height: 12),
                          Text(
                            "We believe local communities thrive when people can easily "
                            "discover what’s happening around them, support small businesses, find local jobs, and"
                            " stay connected to their city. That’s why we built a community-first platform designed "
                            "specifically for Jacksonville and the 904.",
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              color: AppColors.backgroundDark.withAlpha(180),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Job Details",
                            style: TextStyle(
                              fontSize: AppDimensions.fontXL,
                              fontFamily: "Means",
                              color: AppColors.backgroundDark,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "We’re seeking a detail-oriented Project Manager to lead local projects from planning through completion. This role works closely with internal teams, vendors, and clients to ensure projects are delivered on time, within scope, and on budget.",
                            style: GoogleFonts.dmSans(
                              fontSize: AppDimensions.fontS,
                              color: AppColors.backgroundDark.withAlpha(180),
                            ),
                          ),
                          SizedBox(height: 20),
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
                            padding: const EdgeInsets.only(left: 14.0),
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
                          SizedBox(height: 20),
                          Text(
                            "Benefits",
                            style: TextStyle(
                              fontSize: AppDimensions.fontXL,

                              fontFamily: "Means",
                              color: AppColors.backgroundDark,
                            ),
                          ),
                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0),
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
                          SizedBox(height: 20),
                          Container(
                            height: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.circular(12),
                              color: AppColors.elevatedSurfaceLight,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: AppColors.backgroundDark
                                              .withAlpha(20),
                                        ),
                                        child: CustomSvgIcon(
                                          assetName: ImagePath.w,
                                          width: 32,
                                          height: 32,
                                        ),
                                      ),
                                      SizedBox(width: 10),
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
                                              fontsize: 12,
                                              color: AppColors.backgroundDark
                                                  .withAlpha(180),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 16),
                                  Divider(),
                                  SizedBox(height: 16),
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
                                        height: 40,
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
                                        height: 40,
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
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentGeometry.centerLeft,
                          child: Text(
                            "Contact Info",
                            style: TextStyle(
                              fontFamily: "Means",
                              fontSize: 16,
                              color: AppColors.backgroundDark,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        _contactdesign(
                          CustomSvgIcon(
                            assetName: ImagePath.word,
                            width: 20,
                            height: 20,
                          ),
                          "www.cmg3tech.com",
                        ),
                        SizedBox(height: 10),
                        _contactdesign(
                          CustomSvgIcon(
                            assetName: ImagePath.Location,
                            width: 20,
                            height: 20,
                          ),
                          "Downtown Jacksonville, Florida",
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            Get.snackbar("Click", "Apply Successfully");
                          },
                          child: Container(
                            padding: EdgeInsetsGeometry.only(
                              top: 12,
                              bottom: 12,
                              left: 16,
                              right: 16,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.circular(60),
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
        SizedBox(width: 10),
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
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "•",
            style: TextStyle(
              fontSize: 14,
              color: AppColors.backgroundDark.withAlpha(180),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.dmSans(
                fontSize: 14,
                color: AppColors.backgroundDark.withAlpha(180),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
