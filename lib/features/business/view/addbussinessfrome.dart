import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/TextFiled.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import '../../../core/widgets/customeTextfiled.dart';
import '../../../routes/app_routes.dart';

class Addbussinessfrome extends StatelessWidget {
  const Addbussinessfrome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: AppDimensions.weight80,
        leading: Padding(
          padding: const EdgeInsets.only(left: AppDimensions.padding16),
          child: GestureDetector(

            onTap: (){
              Get.back();
            },
            child: Container(
              height: AppDimensions.height45,
              width:  AppDimensions.weight45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.elevatedSurfaceLight,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: AppDimensions.padding10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: AppDimensions.spaceXL,
                    color: AppColors.backgroundDark.withAlpha(190),
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Text("Add Business", style: Textstyles().medialtext()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppDimensions.padding18,
            right: AppDimensions.padding18,
            bottom: AppDimensions.padding36,
            top: AppDimensions.padding36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custometextfiled(
                titletextc: "Business Name",
                hintText: "Enter business name",
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.store,
                  width: AppDimensions.weight20,
                  height: AppDimensions.height20,
                ),
              ),
              SizedBox(height: AppDimensions.paddingM),
              Custometextfiled(
                titletextc: "Business Type",
                hintText: "Select business type",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: AppDimensions.paddingM),
              Custometextfiled(
                titletextc: "Category",
                hintText: "Select category",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: AppDimensions.paddingM),
              Custometextfiled(
                titletextc: "Business Tag",
                hintText: "Select tag",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: AppDimensions.paddingXL),
              TextFileds(
                titletextc: "About",
                hintText: "Describe about business...",
              ),
              SizedBox(height: AppDimensions.paddingXL),
              TextFileds(
                titletextc: "Highlights",
                hintText: "Describe about highlights...",
              ),
              SizedBox(height: AppDimensions.paddingXL),
              Custometextfiled(
                titletextc: "Phone Number",
                hintText: "Enter phone number",
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.call,
                  width: AppDimensions.height20,
                  height: AppDimensions.weight20,
                ),
              ),
              SizedBox(height: AppDimensions.paddingXL),
              Custometextfiled(
                titletextc: "Address",
                hintText: "Enter business location",
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.Location,
                  height: AppDimensions.height20,
                  width: AppDimensions.weight20,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: AppDimensions.padding14),
              Custometextfiled(
                titletextc: "Website",
                hintText: "Enter website",
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.word,
                  height: AppDimensions.height20,
                  width: AppDimensions.weight20,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: AppDimensions.padding14),
              Row(
                children: [
                  Expanded(
                    child: Custometextfiled(
                      titletextc: "Start Time",
                      hintText: "Select time",
                      suffixIcon: CustomSvgIcon(
                        assetName: ImagePath.time,
                        height: AppDimensions.paddingXL,
                        width: AppDimensions.paddingXL,
                      ),
                    ),
                  ),
                  SizedBox(width: 13),
                  Expanded(
                    child: Custometextfiled(
                      titletextc: "Close Time",
                      hintText: "Select time",
                      suffixIcon: CustomSvgIcon(
                        assetName: ImagePath.time,
                        height: AppDimensions.paddingXL,
                        width: AppDimensions.paddingXL,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppDimensions.padding14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Cover", style: Textstyles().textL()),
                  SizedBox(height: AppDimensions.paddingM),
                  Container(
                    height: AppDimensions.height144,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomSvgIcon(
                            assetName: ImagePath.month,
                            height: AppDimensions.weight45,
                            width: AppDimensions.weight45,
                          ),
                          SizedBox(height: AppDimensions.padding14),
                          Text(
                            "Upload Cover Photo",
                            style: GoogleFonts.dmSans(
                              fontSize: AppDimensions.fontXS,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: AppDimensions.padding26),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.businesspage),
                    child: Container(
                      height: AppDimensions.weight45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xFF006778),
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: AppDimensions.fontM,
                            fontWeight: FontWeight.w600,
                            color: AppColors.backgroundLight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppDimensions.paddingL,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
