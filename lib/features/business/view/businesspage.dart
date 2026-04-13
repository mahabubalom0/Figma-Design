import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import '../../../routes/app_routes.dart';

class Businesspage extends StatelessWidget {
  const Businesspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: GestureDetector(
            onTap: ()=>Get.back(),
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
        title: Text("My List", style: Textstyles().medialtext()),
        actionsPadding: EdgeInsetsGeometry.only(right: 16),
        toolbarHeight: 50,
        actions: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF006778),
            ),
            child: Center(child: Icon(Icons.add, size: 24)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(
          top: 50,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: ()=>Get.toNamed(AppRoutes.businessdetails),
              child: Container(
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.elevatedSurfaceLight
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 148,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16),
                        ),
                        color: AppColors.elevatedSurfaceLight,
                        image: DecorationImage(
                          image: AssetImage(ImagePath.caching),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 12, top: 12),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.elevatedSurfaceLight,
                            ),
                            child: Center(
                              child: CustomSvgIcon(
                                assetName: ImagePath.heardbold,
                                height: 20,
                                width: 20,
                                color: AppColors.backgroundDark,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 16, right: 16),
                      child: Row(
                        children: [
                          rowdesign(
                            boxcolor: Color(0xFFE8604A).withAlpha(50),
                            text: "Restaurant",
                            textcolor: Color(0xFFBE4430),
                          ),
                          SizedBox(width: 9),
                          rowdesign(
                            boxcolor: Color(0xFF4FBF6B).withAlpha(50),
                            text: "Black-Owned",
                            textcolor: Color(0xFF008321),
                          ),
                          Spacer(),
                          Container(
                            child: Row(
                              children: [
                                CustomSvgIcon(
                                  assetName: ImagePath.clock,
                                  width: 14,
                                  height: 14,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Open at 12 pm",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 12,
                                    color: AppColors.backgroundDark,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Riverside Coffee Co.",
                            style: Textstyles().smalltext(),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Locally roasted coffee, artisan pastries, and cozy vibes in the heart of Riverside.",
                            style: GoogleFonts.dmSans(
                              fontSize: 12,
                              color: Color(0xFF00171D).withAlpha(150),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              CustomSvgIcon(assetName: ImagePath.Location,height: 14,width: 14,),
                              SizedBox(width: 5,),
                              Text(
                                "1200 NW 6 Avenue, Jacksonville, FL",
                                style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  color:Color(0xFF00171D).withAlpha(160),
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 370,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.elevatedSurfaceLight
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 148,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                      ),
                      color: AppColors.elevatedSurfaceLight,
                      image: DecorationImage(
                        image: AssetImage(ImagePath.room),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(right: 12, top: 12),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.elevatedSurfaceLight,
                          ),
                          child: Center(
                            child: CustomSvgIcon(
                              assetName: ImagePath.heardbold,
                              height: 20,
                              width: 20,
                              color: AppColors.backgroundDark,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 16, right: 16),
                    child: Row(
                      children: [
                        rowdesign(
                          boxcolor: Color(0xFF4FBF6B).withAlpha(20),
                          text: "Wellness",
                          textcolor: Color(0xFF008321),
                        ),
                        SizedBox(width: 9),
                        rowdesign(
                          boxcolor: Color(0xFFAA26FF).withAlpha(20),
                          text: "Woman-Owned",
                          textcolor: Color(0xFFAA26FF),
                        ),
                        Spacer(),
                        Container(
                          child: Row(
                            children: [
                              CustomSvgIcon(
                                assetName: ImagePath.clock,
                                width: 14,
                                height: 14,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Open at 8 pm",
                                style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  color: AppColors.backgroundDark,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jacksonville Yoga Studio",
                          style: Textstyles().smalltext(),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Mindful yoga classes for all levels. Drop-in welcome. First class free.",
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            color: Color(0xFF00171D).withAlpha(150),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            CustomSvgIcon(assetName: ImagePath.Location,height: 14,width: 14,),
                            SizedBox(width: 5,),
                            Text(
                              "1200 NW 6 Avenue, Jacksonville, FL",
                              style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  color: Color(0xFF00171D).withAlpha(160),
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowdesign({Color? boxcolor, String? text, Color? textcolor}) {
    return Container(
      padding: EdgeInsetsGeometry.only(top: 4, right: 8, left: 8, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: boxcolor,
      ),
      child: Center(
        child: Text(
          text!,
          style: GoogleFonts.dmSans(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
