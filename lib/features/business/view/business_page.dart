import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/core.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import '../../../core/widgets/custome_business_card.dart';
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
              child: Center(
                child: Icon(Icons.add, size: getHeight(AppDimensions.icon24)),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.only(
            top: getHeight(AppDimensions.padding50),
            left: getWidth(AppDimensions.padding16),
            right: getWidth(AppDimensions.padding16),
            bottom: getWidth(AppDimensions.padding16),
          ),
          child: Column(
            children: [
              CustomeBusinessCard(
                onTap: () {
                  Get.toNamed(AppRoutes.businessdetails);
                },
                heardIcon: CustomSvgIcon(
                  assetName: ImagePath.heardbold,
                  height: getHeight(AppDimensions.height20),
                  width: getWidth(AppDimensions.weight20),
                  color: AppColors.backgroundDark,
                ),
                nameTitleText: AppStrings.riverside.tr,
                subTitleText:
                    "Locally roasted coffee, artisan pastries, and cozy vibes in the heart of Riverside.",
                actionText: "Open at 12 pm",
                coverImage: DecorationImage(
                  image: AssetImage(ImagePath.caching),
                  fit: BoxFit.cover,
                ),
                rowBoxColor: AppColors.box2color.withAlpha(20),
                rowBorderColor: AppColors.box2color.withAlpha(100),
                rowText: "Restaurant",
                rowTextColor: AppColors.text2color,
                rowSIBorderColor: AppColors.boxcolor.withAlpha(100),
                rowSIBoxColor: AppColors.boxcolor.withAlpha(50),
                rowSIText: "Black-Owned",
                rowSITextColor: AppColors.textcolor,
              ),
              SizedBox(height: getHeight(AppDimensions.paddingM)),
              CustomeBusinessCard(
                heardIcon: CustomSvgIcon(
                  assetName: ImagePath.heardbold,
                  height: getHeight(AppDimensions.height20),
                  width: getWidth(AppDimensions.weight20),
                  color: AppColors.backgroundDark,
                ),
                nameTitleText: AppStrings.jacksonvilleYogaStudio.tr,
                subTitleText:
                    "Mindful yoga classes for all levels. Drop-in welcome. First class free.",
                actionText: "Open at 8 pm",
                rowText: "Wellness",
                rowBoxColor: AppColors.box3color.withAlpha(20),
                rowTextColor: AppColors.text3color,
                rowBorderColor: AppColors.box3color.withAlpha(100),
                rowSIBoxColor: AppColors.box4color.withAlpha(20),
                rowSITextColor: AppColors.text4color,
                rowSIText: "Woman-Owned",
                rowSIBorderColor: AppColors.box4color.withAlpha(100),
                coverImage: DecorationImage(
                  image: AssetImage(ImagePath.room),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
