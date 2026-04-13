import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/custom_svg_icon.dart';

class Businessdetails extends StatelessWidget {
  const Businessdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePath.caching),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60.0,
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: GestureDetector(
                            onTap: (){
                              Get.back();
                            },
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
                                    color: AppColors.backgroundDark.withAlpha(160),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.elevatedSurfaceLight,
                            ),
                            child: Center(
                              child: CustomSvgIcon(
                                assetName: ImagePath.share,
                                width: 24,
                                height: 24,
                                color: AppColors.backgroundDark.withAlpha(180),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, right: 16),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
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
                                width: 24,
                                height: 24,
                                color: AppColors.backgroundDark.withAlpha(160),
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsetsGeometry.only(
                          top: 4,
                          bottom: 4,
                          left: 8,
                          right: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Color(0xFFE8604A).withAlpha(30),
                          border: BoxBorder.all(
                            color: Color(0xFFE8604A).withAlpha(100),
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Restaurant",
                            style: GoogleFonts.dmSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFBE4430),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        padding: EdgeInsetsGeometry.only(
                          top: 4,
                          bottom: 4,
                          left: 8,
                          right: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Color(0xFF4FBF6B).withAlpha(30),
                          border: BoxBorder.all(
                            color: Color(0xFF4FBF6B).withAlpha(100),
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Restaurant",
                            style: GoogleFonts.dmSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF008321),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Riverside Coffee Co.",
                    style: Textstyles().leargertext(),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "1200 NW 6 Avenue, Jacksonville, FL",
                    style: Textstyles().textL(fontsize: 16),
                  ),

                  SizedBox(height: 23),
                  Text("About", style: Textstyles().smalltext()),
                  SizedBox(height: 14),
                  Text(
                    "Riverside Coffee Co. is a locally owned café serving freshly roasted coffee, artisan pastries, and a cozy space to gather. Proudly rooted in the heart of Riverside, we focus on quality, community, and great vibes.",
                    style: Textstyles().textL(),
                  ),

                  SizedBox(height: 22),
                  Container(
                    height: 78,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.elevatedSurfaceLight,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("4.75", style: Textstyles().smalltext(fontsize: 14)),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: 10,
                                  height: 10,
                                ),
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: 10,
                                  height: 10,
                                ),
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: 10,
                                  height: 10,
                                ),
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: 10,
                                  height: 10,
                                ),
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: 10,
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 40, child: VerticalDivider()),
                        Text(
                          "Guest\n Favourite",
                          style: Textstyles().smalltext(fontsize: 14),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40, child: VerticalDivider()),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("298", style: Textstyles().smalltext(fontsize: 14)),
                            Text(
                              "Reviews",
                              style: GoogleFonts.dmSans(
                                fontSize: 10,
                                color: Color(0xFF00171D).withAlpha(160),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24),
                  Text("Highlights", style: Textstyles().smalltext()),
                  SizedBox(height: 15),
                  Text(
                    "A trusted local provider offering reliable services with a focus on professionalism and customer satisfaction. Committed to serving the community with integrity and attention to detail.",
                    style: Textstyles().textL(),
                  ),

                  SizedBox(height: 22),
                  Text("Availability", style: Textstyles().smalltext()),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      CustomSvgIcon(
                        assetName: ImagePath.clock,
                        color: AppColors.backgroundDark,
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 5),
                      Text("Now open until 23:30", style: Textstyles().textL()),
                      Spacer(),
                      Container(
                        padding: EdgeInsetsGeometry.only(
                          top: 6,
                          bottom: 6,
                          left: 14,
                          right: 14,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0xFFFFB100),
                          color: Color(0xFFFFB100),
                        ),
                        child: Center(
                          child: Text(
                            "View More",
                            style: GoogleFonts.dmSans(
                              fontSize: 12,
                              color: AppColors.backgroundDark,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Image.asset(ImagePath.phone,color: AppColors.backgroundDark,width: 20,height: 20,),
                      SizedBox(width: 10),
                      Text("+1 (555) 014-8723", style: Textstyles().textL()),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      CustomSvgIcon(
                        assetName: ImagePath.Location,
                        color: AppColors.backgroundDark,
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1200 NW 6 Avenue, Jacksonville, FL",
                        style: Textstyles().textL(),
                      ),
                    ],
                  ),
                  SizedBox(height: 22),
                  Container(
                    height: 204,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.elevatedSurfaceLight,
                      image: DecorationImage(
                        image: AssetImage(ImagePath.map),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Color(0xFF006778),
                    ),
                    child: Center(
                      child: Text(
                        "Edit Business",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.elevatedSurfaceLight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: AppColors.elevatedSurfaceLight,
                    ),
                    child: Center(
                      child: Text(
                        "Delete Business",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.backgroundDark,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
