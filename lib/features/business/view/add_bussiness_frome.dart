import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/core.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/TextFiled.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import '../../../core/widgets/Business_from_custom_TextFiled.dart';
import '../../../routes/app_routes.dart';

class Addbussinessfrome extends StatelessWidget {
  const Addbussinessfrome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: getWidth(AppDimensions.weight80),
        leading: Padding(
          padding: EdgeInsets.only(left: getWidth(AppDimensions.padding16)),
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
                    size: getHeight(AppDimensions.spaceXL),
                    color: AppColors.backgroundDark.withAlpha(190),
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Text(
          AppStrings.addbusiness.tr,
          style: Textstyles().medialtext(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: getWidth(AppDimensions.padding18),
            right: getWidth(AppDimensions.padding18),
            bottom: getHeight(AppDimensions.padding36),
            top: getHeight(AppDimensions.padding36),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custometextfiled(
                titletextc: AppStrings.business_name.tr,
                hintText: AppStrings.enter_business_name.tr,
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.store,
                  width: getWidth(AppDimensions.weight20),
                  height: getHeight(AppDimensions.weight20),
                ),
              ),
              SizedBox(height: getHeight(AppDimensions.paddingM)),
              Custometextfiled(
                titletextc: AppStrings.business_type.tr,
                hintText: AppStrings.select_bus_ty.tr,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: getHeight(AppDimensions.paddingM)),
              Custometextfiled(
                titletextc: AppStrings.category.tr,
                hintText: AppStrings.select_category.tr,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: getHeight(AppDimensions.paddingM)),
              Custometextfiled(
                titletextc: AppStrings.business_tag.tr,
                hintText: AppStrings.select_tag.tr,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: getHeight(AppDimensions.paddingXL)),
              TextFileds(
                titletextc: AppStrings.about.tr,
                hintText: AppStrings.describe_about.tr,
              ),
              SizedBox(height: getHeight(AppDimensions.paddingXL)),
              TextFileds(
                titletextc: AppStrings.highlights.tr,
                hintText: AppStrings.describe_highlights.tr,
              ),
              SizedBox(height: getHeight(AppDimensions.paddingXL)),
              Custometextfiled(
                titletextc: AppStrings.phone.tr,
                hintText: AppStrings.enter_phone.tr,
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.call,
                  width: getWidth(AppDimensions.height20),
                  height: getHeight(AppDimensions.weight20),
                ),
              ),
              SizedBox(height: getHeight(AppDimensions.paddingXL)),
              Custometextfiled(
                titletextc: AppStrings.address.tr,
                hintText: AppStrings.enter_busi_address.tr,
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.Location,
                  height: getHeight(AppDimensions.height20),
                  width: getWidth(AppDimensions.weight20),
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: getHeight(AppDimensions.padding14)),
              Custometextfiled(
                titletextc: AppStrings.website.tr,
                hintText: AppStrings.enter_website.tr,
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.word,
                  height: getHeight(AppDimensions.height20),
                  width: getWidth(AppDimensions.weight20),
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: getHeight(AppDimensions.padding14)),
              Row(
                children: [
                  Expanded(
                    child: Custometextfiled(
                      titletextc: AppStrings.start_time.tr,
                      hintText: AppStrings.select_time.tr,
                      suffixIcon: CustomSvgIcon(
                        assetName: ImagePath.time,
                        height: getHeight(AppDimensions.paddingXL),
                        width: getWidth(AppDimensions.paddingXL),
                      ),
                    ),
                  ),
                  SizedBox(width: getWidth(13)),
                  Expanded(
                    child: Custometextfiled(
                      titletextc: AppStrings.close_time.tr,
                      hintText: AppStrings.select_time.tr,
                      suffixIcon: CustomSvgIcon(
                        assetName: ImagePath.time,
                        height: getHeight(AppDimensions.paddingXL),
                        width: getWidth(AppDimensions.paddingXL),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getHeight(AppDimensions.padding14)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.business_cover.tr,
                    style: Textstyles().textL(),
                  ),
                  SizedBox(height: getHeight(AppDimensions.paddingM)),
                  Container(
                    height: getHeight(AppDimensions.height144),
                    width: getWidth(double.infinity),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getRadius(AppDimensions.radiusXL)),
                      color: AppColors.elevatedSurfaceLight,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomSvgIcon(
                            assetName: ImagePath.month,
                            height: getHeight(AppDimensions.weight45),
                            width: getWidth(AppDimensions.weight45),
                          ),
                          SizedBox(height: getHeight(AppDimensions.padding14)),
                          Text(
                            AppStrings.upload_cover.tr,
                            style: GoogleFonts.dmSans(
                              fontSize: getSp(AppDimensions.fontXS),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: getHeight(AppDimensions.padding26)),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.businesspage),
                    child: Container(
                      height: getHeight(AppDimensions.weight45),
                      width: getWidth(double.infinity),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getRadius(AppDimensions.radius32),
                        ),
                        color: AppColors.buttoncolor,
                      ),
                      child: Center(
                        child: Text(
                          AppStrings.submit.tr,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: getSp(AppDimensions.fontM),
                            fontWeight: FontWeight.w600,
                            color: AppColors.backgroundLight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getHeight(AppDimensions.paddingL)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
