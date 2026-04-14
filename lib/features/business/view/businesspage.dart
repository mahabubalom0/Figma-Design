import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/core.dart';
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
        leadingWidth: AppDimensions.weight80,
        leading: Padding(
          padding: EdgeInsets.only(left: getWidth(AppDimensions.padding16)),
          child: GestureDetector(
            onTap: () => Get.back(),
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
                    size: getHeight(AppDimensions.spaceXL),
                    color: AppColors.backgroundDark,
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Text(AppStrings.mylist.tr, style: Textstyles().medialtext()),
        actionsPadding: EdgeInsetsGeometry.only(
          right: getWidth(AppDimensions.padding16),
        ),
        toolbarHeight: 50,
        actions: [
          GestureDetector(
            onTap: () => Get.toNamed(AppRoutes.addbusinessfrome),
            child: Container(
              height: getHeight(AppDimensions.weight45),
              width: getWidth(AppDimensions.weight45),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.buttoncolor,
              ),
              child: Center(child: Icon(Icons.add, size: getHeight(AppDimensions.icon24))),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(
          top: getHeight(AppDimensions.padding50),
          left: getWidth(AppDimensions.padding16),
          right: getWidth(AppDimensions.padding16),
          bottom: getWidth(AppDimensions.padding16),
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.businessdetails),
              child: Container(
                height: getHeight(AppDimensions.height370),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.elevatedSurfaceLight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getHeight(AppDimensions.height148),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppDimensions.radiusXL),
                          topLeft: Radius.circular(AppDimensions.radiusXL),
                        ),
                        color: AppColors.elevatedSurfaceLight,
                        image: DecorationImage(
                          image: AssetImage(ImagePath.caching),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: getWidth(AppDimensions.paddingM),
                          top: getHeight(AppDimensions.paddingM),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
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
                                height: getHeight(AppDimensions.height20),
                                width: getWidth(AppDimensions.weight20),
                                color: AppColors.backgroundDark,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getHeight(AppDimensions.padding18),
                        left: getWidth(AppDimensions.padding16),
                        right: getWidth(AppDimensions.padding16),
                      ),
                      child: Row(
                        children: [
                          rowdesign(
                            boxcolor: AppColors.box2color.withAlpha(20),
                            text: "Restaurant",
                            textcolor: AppColors.text2color,
                            bordercolor: AppColors.box2color.withAlpha(100),
                          ),
                          SizedBox(width: getWidth(AppDimensions.paddingS)),
                          rowdesign(
                            boxcolor: AppColors.boxcolor.withAlpha(50),
                            text: "Black-Owned",
                            textcolor: AppColors.textcolor,
                            bordercolor: AppColors.boxcolor.withAlpha(100),
                          ),
                          Spacer(),
                          Container(
                            child: Row(
                              children: [
                                CustomSvgIcon(
                                  assetName: ImagePath.clock,
                                  width: getWidth(AppDimensions.weight14),
                                  height: getHeight(AppDimensions.height14),
                                  color:AppColors.backgroundDark,
                                ),
                                SizedBox(
                                  width: getWidth(AppDimensions.padding10),
                                ),
                                Text(
                                  "Open at 12 pm",
                                  style: GoogleFonts.dmSans(
                                    fontSize: getSp(AppDimensions.fontX),
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

                    SizedBox(height: getHeight(AppDimensions.padding14)),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(AppDimensions.padding18),
                        right: getWidth(AppDimensions.padding18),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.riverside.tr,
                            style: Textstyles().smalltext(),
                          ),
                          SizedBox(height: getHeight(AppDimensions.paddingSX)),
                          Text(
                            "Locally roasted coffee, artisan pastries, and cozy vibes in the heart of Riverside.",
                            style: GoogleFonts.dmSans(
                              fontSize: AppDimensions.fontXS,
                              color: AppColors.backgroundDark.withAlpha(150),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: getHeight(AppDimensions.padding16)),
                          Row(
                            children: [
                              CustomSvgIcon(
                                assetName: ImagePath.Location,
                                height: getHeight(AppDimensions.height14),
                                width:getWidth( AppDimensions.weight14),
                              ),
                              SizedBox(width:getWidth( AppDimensions.paddingXS)),
                              Text(
                                "1200 NW 6 Avenue, Jacksonville, FL",
                                style: GoogleFonts.dmSans(
                                  fontSize: getSp(AppDimensions.fontXS),
                                  color: AppColors.backgroundDark.withAlpha(160),
                                  fontWeight: FontWeight.w400,
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
            SizedBox(height: getHeight(AppDimensions.paddingM)),
            Container(
              height: getHeight(AppDimensions.height370),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getRadius(AppDimensions.radius50)),
                color: AppColors.elevatedSurfaceLight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getHeight(AppDimensions.height148),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(getRadius(AppDimensions.radiusXL)),
                        topLeft: Radius.circular(getRadius(AppDimensions.radiusXL)),
                      ),
                      color: AppColors.elevatedSurfaceLight,
                      image: DecorationImage(
                        image: AssetImage(ImagePath.room),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right:getWidth( AppDimensions.paddingM),
                        top:getHeight( AppDimensions.paddingM),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
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
                              height: getHeight(AppDimensions.height20),
                              width: getWidth(AppDimensions.weight20),
                              color: AppColors.backgroundDark,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: getHeight(AppDimensions.padding18),
                      left: getWidth(AppDimensions.padding16),
                      right: getWidth(AppDimensions.padding16),
                    ),
                    child: Row(
                      children: [
                        rowdesign(
                          boxcolor: AppColors.box3color.withAlpha(20),
                          text: "Wellness",
                          textcolor: AppColors.text3color,
                          bordercolor: AppColors.box3color.withAlpha(100),
                        ),
                        SizedBox(width: getWidth(AppDimensions.paddingS)),
                        rowdesign(
                          boxcolor: AppColors.box4color.withAlpha(20),
                          text: "Woman-Owned",
                          textcolor: AppColors.text4color,
                          bordercolor: AppColors.box4color.withAlpha(100),
                        ),
                        Spacer(),
                        Container(
                          child: Row(
                            children: [
                              CustomSvgIcon(
                                assetName: ImagePath.clock,
                                width: getWidth(AppDimensions.weight14),
                                height: getHeight(AppDimensions.weight14),
                                color: Colors.black,
                              ),
                              SizedBox(width: getWidth(AppDimensions.padding10)),
                              Text(
                                "Open at 8 pm",
                                style: GoogleFonts.dmSans(
                                  fontSize: getSp(AppDimensions.fontX),
                                  color: AppColors.backgroundDark.withValues(alpha: 0.8),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: getHeight(AppDimensions.padding14)),
                  Padding(
                    padding:  EdgeInsets.only(
                      left:getWidth(AppDimensions.padding18) ,
                      right: getWidth(AppDimensions.padding18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.jacksonvilleYogaStudio.tr,
                          style: Textstyles().smalltext(),
                        ),
                        SizedBox(height:getHeight( AppDimensions.paddingSX)),
                        Text(
                          "Mindful yoga classes for all levels. Drop-in welcome. First class free.",
                          style: GoogleFonts.dmSans(
                            fontSize: getSp(AppDimensions.fontXS),
                            color: AppColors.backgroundDark.withAlpha(150),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: getHeight(AppDimensions.padding16)),
                        Row(
                          children: [
                            CustomSvgIcon(
                              assetName: ImagePath.Location,
                              height: getHeight(AppDimensions.height14),
                              width: getWidth(AppDimensions.weight14),
                            ),
                            SizedBox(width: getWidth(5)),
                            Text(
                              "1200 NW 6 Avenue, Jacksonville, FL",
                              style: GoogleFonts.dmSans(
                                fontSize: getSp(AppDimensions.fontXS),
                                color: AppColors.backgroundDark.withAlpha(160),
                                fontWeight: FontWeight.w400,
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
          ],
        ),
      ),
    );
  }

  Widget rowdesign({
    Color? boxcolor,
    String? text,
    Color? textcolor,
    Color? bordercolor,
  }) {
    return Container(
      padding: EdgeInsetsGeometry.only(
        top: getHeight(AppDimensions.paddingYS),
        right: getWidth(AppDimensions.paddingSX),
        left: getWidth(AppDimensions.paddingSX),
        bottom: getHeight(AppDimensions.paddingYS),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getRadius(AppDimensions.radiusM)),
        color: boxcolor,
        border: BoxBorder.all(color: bordercolor!),
      ),
      child: Center(
        child: Text(
          text!,
          style: GoogleFonts.dmSans(
            fontSize: getSp(AppDimensions.fontX),
            fontWeight: FontWeight.w400,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
