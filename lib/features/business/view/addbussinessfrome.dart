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
        leadingWidth: 80,
        leading: Padding(
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
                    color: AppColors.backgroundDark,
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
            left: 18.0,
            right: 18,
            bottom: 36,
            top: 38,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custometextfiled(
                titletextc: "Business Name",
                hintText: "Enter business name",
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.store,
                  width: 20,
                  height: 20,
                ),
              ),
              SizedBox(height: 12),
              Custometextfiled(
                titletextc: "Business Type",
                hintText: "Select business type",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: 12),
              Custometextfiled(
                titletextc: "Category",
                hintText: "Select category",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: 12),
              Custometextfiled(
                titletextc: "Business Tag",
                hintText: "Select tag",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: 14),
              TextFileds(
                titletextc: "About",
                hintText: "Describe about business...",
              ),
              SizedBox(height: 14),
              TextFileds(
                titletextc: "Highlights",
                hintText: "Describe about highlights...",
              ),
              SizedBox(height: 12),
              Custometextfiled(
                titletextc: "Phone Number",
                hintText: "Enter phone number",
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.call,
                  width: 20,
                  height: 20,
                ),
              ),
              SizedBox(height: 14),
              Custometextfiled(
                titletextc: "Address",
                hintText: "Enter business location",
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.Location,
                  height: 20,
                  width: 20,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: 14),
              Custometextfiled(
                titletextc: "Website",
                hintText: "Enter website",
                suffixIcon: CustomSvgIcon(
                  assetName: ImagePath.word,
                  height: 20,
                  width: 20,
                  color: AppColors.backgroundDark.withAlpha(160),
                ),
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: Custometextfiled(
                      titletextc: "Start Time",
                      hintText: "Select time",
                      suffixIcon: CustomSvgIcon(
                        assetName: ImagePath.time,
                        height: 20,
                        width: 20,
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
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Cover", style: Textstyles().textL()),
                  SizedBox(height: 10),
                  Container(
                    height: 144,
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
                            height: 45,
                            width: 45,
                          ),
                          SizedBox(height: 14),
                          Text(
                            "Upload Cover Photo",
                            style: GoogleFonts.dmSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 26),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.businesspage),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xFF006778),
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: AppColors.backgroundLight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
