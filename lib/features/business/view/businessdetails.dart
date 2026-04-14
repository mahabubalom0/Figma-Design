import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import 'profile.dart';

class Businessdetails extends StatelessWidget {
  const Businessdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: AppDimensions.height250,
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
                    padding: EdgeInsets.only(
                      top: getHeight(AppDimensions.padding60),
                      left: getWidth(AppDimensions.padding16),
                      right: getWidth(AppDimensions.padding16),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getWidth(AppDimensions.padding16),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              height: getHeight(AppDimensions.height45),
                              width: getWidth(AppDimensions.weight45),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.elevatedSurfaceLight,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getWidth(AppDimensions.padding10),
                                  ),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: AppDimensions.spaceXL,
                                    color: AppColors.backgroundDark.withAlpha(
                                      160,
                                    ),
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
                    padding: EdgeInsets.only(
                      top: getHeight(AppDimensions.padding60),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getWidth(AppDimensions.padding16),
                          ),
                          child: Container(
                            height: getHeight(AppDimensions.height45),
                            width: getWidth(AppDimensions.height45),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.elevatedSurfaceLight,
                            ),
                            child: Center(
                              child: CustomSvgIcon(
                                assetName: ImagePath.share,
                                width: getWidth(AppDimensions.weight24),
                                height: getHeight(AppDimensions.height24),
                                color: AppColors.backgroundDark.withAlpha(180),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: getWidth(AppDimensions.weight8)),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(AppDimensions.padding60),
                      right: getWidth(AppDimensions.padding16),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getWidth(AppDimensions.padding16),
                          ),
                          child: InkWell(
                            onTap: () {
                              Get.to(Profile());
                            },
                            child: Container(
                              height: getHeight(AppDimensions.height45),
                              width: getWidth(AppDimensions.height45),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.elevatedSurfaceLight,
                              ),
                              child: Center(
                                child: CustomSvgIcon(
                                  assetName: ImagePath.heardbold,
                                  width: getWidth(AppDimensions.weight24),
                                  height: getHeight(AppDimensions.height24),
                                  color: AppColors.backgroundDark.withAlpha(
                                    160,
                                  ),
                                ),
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
            SizedBox(height: getHeight(AppDimensions.padding10)),
            Padding(
              padding: EdgeInsets.all(getRadius(AppDimensions.padding22)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsetsGeometry.only(
                          top: getHeight(AppDimensions.paddingXS),
                          bottom: getHeight(AppDimensions.paddingXS),
                          left: getWidth(AppDimensions.paddingS),
                          right: getWidth(AppDimensions.paddingS),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppDimensions.radius32,
                          ),
                          color: AppColors.errorDark.withAlpha(30),
                          border: BoxBorder.all(
                            color:AppColors.errorDark.withAlpha(100),
                            width: AppDimensions.weight1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Restaurant",
                            style: GoogleFonts.dmSans(
                              fontSize: AppDimensions.fontX,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFBE4430),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: getWidth(AppDimensions.paddingM)),
                      Container(
                        padding: EdgeInsetsGeometry.only(
                          top: getHeight(AppDimensions.paddingXS),
                          bottom: getHeight(AppDimensions.paddingXS),
                          left: getWidth(AppDimensions.paddingS),
                          right: getWidth(AppDimensions.paddingS),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getRadius(AppDimensions.radius32),
                          ),
                          color: Color(0xFF4FBF6B).withAlpha(30),
                          border: BoxBorder.all(
                            color: Color(0xFF4FBF6B).withAlpha(100),
                            width: getWidth(AppDimensions.weight1),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Black-Owned",
                            style: GoogleFonts.dmSans(
                              fontSize: AppDimensions.fontX,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF008321),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getHeight(AppDimensions.padding10)),
                  Text(
                    AppStrings.riverside.tr,
                    style: Textstyles().leargertext(),
                  ),
                  SizedBox(height: getHeight(AppDimensions.paddingS)),
                  Text(
                    "1200 NW 6 Avenue, Jacksonville, FL",
                    style: Textstyles().textL(fontsize: AppDimensions.fontL),
                  ),

                  SizedBox(height: getHeight(AppDimensions.padding23)),
                  Text(AppStrings.about.tr, style: Textstyles().smalltext()),
                  SizedBox(height: getHeight(AppDimensions.padding14)),
                  Text(
                    "Riverside Coffee Co. is a locally owned café serving freshly roasted coffee, artisan pastries, and a cozy space to gather. Proudly rooted in the heart of Riverside, we focus on quality, community, and great vibes.",
                    style: Textstyles().textL(),
                  ),

                  SizedBox(height: getHeight(AppDimensions.padding22)),
                  Container(
                    height: getHeight(AppDimensions.height78),
                    width: getWidth(double.infinity),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getRadius(AppDimensions.radiusXL),
                      ),
                      color: AppColors.elevatedSurfaceLight,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "4.75",
                              style: Textstyles().smalltext(
                                fontsize: AppDimensions.fontS,
                              ),
                            ),
                            SizedBox(height: getHeight(AppDimensions.weight6)),
                            Row(
                              children: [
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: getWidth(AppDimensions.weight10),
                                  height: getHeight(AppDimensions.weight10),
                                ),
                                SizedBox(width: 2),
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: AppDimensions.weight10,
                                  height: AppDimensions.height10,
                                ),
                                SizedBox(width: 2),
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: AppDimensions.weight10,
                                  height: AppDimensions.height10,
                                ),
                                SizedBox(width: 2),
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: AppDimensions.weight10,
                                  height: AppDimensions.height10,
                                ),
                                SizedBox(width: 2),
                                CustomSvgIcon(
                                  assetName: ImagePath.star,
                                  width: AppDimensions.weight10,
                                  height: AppDimensions.height10,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getHeight(AppDimensions.weight10),
                          child: VerticalDivider(),
                        ),
                        Text(
                          AppStrings.guestFavourite.tr,
                          style: Textstyles().smalltext(
                            fontsize: AppDimensions.fontS,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: getHeight(AppDimensions.weight10),
                          child: VerticalDivider(),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "298",
                              style: Textstyles().smalltext(
                                fontsize: AppDimensions.fontS,
                              ),
                            ),
                            Text(
                              "Reviews",
                              style: GoogleFonts.dmSans(
                                fontSize: AppDimensions.fontX,
                                color: AppColors.backgroundDark.withAlpha(160),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: getHeight(AppDimensions.padding24)),
                  Text(
                    AppStrings.highlights.tr,
                    style: Textstyles().smalltext(),
                  ),
                  SizedBox(height: getHeight(AppDimensions.padding16)),
                  Text(
                    "A trusted local provider offering reliable services with a focus on professionalism and customer satisfaction. Committed to serving the community with integrity and attention to detail.",
                    style: Textstyles().textL(),
                  ),

                  SizedBox(height: getHeight(AppDimensions.padding22)),
                  Text(
                    AppStrings.availability.tr,
                    style: Textstyles().smalltext(),
                  ),
                  SizedBox(height: getHeight(AppDimensions.padding18)),
                  Row(
                    children: [
                      CustomSvgIcon(
                        assetName: ImagePath.clock,
                        color: AppColors.backgroundDark,
                        width: getWidth(AppDimensions.weight20),
                        height: getHeight(AppDimensions.weight20),
                      ),
                      SizedBox(width: getWidth(AppDimensions.paddingXS)),
                      Text("Now open until 23:30", style: Textstyles().textL()),
                      Spacer(),
                      Container(
                        padding: EdgeInsetsGeometry.only(
                          top: getHeight(AppDimensions.paddingSX),
                          bottom: getHeight(AppDimensions.paddingSX),
                          left: getWidth(AppDimensions.padding14),
                          right: getWidth(AppDimensions.padding14),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0xFFFFB100),
                          color: Color(0xFFFFB100),
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.viewmore.tr,
                            style: GoogleFonts.dmSans(
                              fontSize: AppDimensions.fontXS,
                              color: AppColors.backgroundDark,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getHeight(AppDimensions.padding18)),
                  Row(
                    children: [
                      Image.asset(
                        ImagePath.phone,
                        color: AppColors.backgroundDark,
                        width: getWidth(AppDimensions.weight20),
                        height: getHeight(AppDimensions.weight20),
                      ),
                      SizedBox(width: getWidth(AppDimensions.padding10)),
                      Text("+1 (555) 014-8723", style: Textstyles().textL()),
                    ],
                  ),
                  SizedBox(height: getHeight(AppDimensions.padding18)),
                  Row(
                    children: [
                      CustomSvgIcon(
                        assetName: ImagePath.Location,
                        color: AppColors.backgroundDark,
                        width: getWidth(AppDimensions.weight20),
                        height: getHeight(AppDimensions.height20),
                      ),
                      SizedBox(width: getWidth(AppDimensions.paddingM)),
                      Text(
                        "1200 NW 6 Avenue, Jacksonville, FL",
                        style: Textstyles().textL(),
                      ),
                    ],
                  ),
                  SizedBox(height: AppDimensions.padding22),
                  Container(
                    height: getHeight(AppDimensions.height204),
                    width: getWidth(double.infinity),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getRadius(AppDimensions.radiusXL),
                      ),
                      color: AppColors.elevatedSurfaceLight,
                      image: DecorationImage(
                        image: AssetImage(ImagePath.map),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: getHeight(AppDimensions.padding30)),
                  Container(
                    height: getHeight(AppDimensions.height45),
                    width: getWidth(double.infinity),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppDimensions.radiusYYLX,
                      ),
                      color: AppColors.buttoncolor,
                    ),
                    child: Center(
                      child: Text(
                        AppStrings.editBusiness.tr,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: AppDimensions.fontM,
                          fontWeight: FontWeight.w600,
                          color: AppColors.elevatedSurfaceLight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getHeight(AppDimensions.padding16)),
                  Container(
                    height: getHeight(AppDimensions.height45),
                    width: getWidth(double.infinity),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getRadius(AppDimensions.radius32),
                      ),
                      color: AppColors.backgroundDark.withAlpha(20),
                    ),
                    child: Center(
                      child: Text(
                        AppStrings.deleteBusiness.tr,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: AppDimensions.fontM,
                          fontWeight: FontWeight.w600,
                          color: AppColors.backgroundDark,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getHeight(AppDimensions.paddingL)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
