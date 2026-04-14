import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/core.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import 'jobdeatiles.dart';
import '../controller/controller.dart';

class Job extends StatelessWidget {
  const Job({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put(Controller());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundLight,
        leadingWidth: getWidth(AppDimensions.paddingHUGEXX),
        leading: Padding(
          padding:  EdgeInsets.only(left: getWidth(AppDimensions.paddingL)),
          child: Container(
            height: getHeight(AppDimensions.paddingHUGEXXY),
            width: getWidth(AppDimensions.paddingHUGEXXY),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.elevatedSurfaceLight,
            ),
            child: Center(
              child: Padding(
                padding:  EdgeInsets.only(left: getWidth(AppDimensions.paddingM)),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: getHeight(AppDimensions.spaceXL),
                  color: AppColors.backgroundDark,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          "Local Job",
          style: TextStyle(
            fontFamily: "Means",
            fontSize: getSp(AppDimensions.fontXL),
            color: AppColors.backgroundDark,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: AppDimensions.paddingXXL,
              horizontal: AppDimensions.paddingXL,
            ),
            child: Column(
              children: [
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                     getRadius( AppDimensions.radiusXXXL,)
                    ),
                    color: AppColors.elevatedSurfaceLight,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search jobs...",
                      hintStyle: GoogleFonts.dmSans(
                        color: AppColors.backgroundDark.withAlpha(170),
                      ),
                      contentPadding: EdgeInsets.only(
                        top: getHeight(AppDimensions.paddingS),
                        bottom: getHeight(AppDimensions.paddingYS),
                      ),
                      prefixIconColor: AppColors.backgroundDark,
                      prefixIcon: Padding(
                        padding:  EdgeInsets.only(
                          left: getWidth(AppDimensions.paddingXL),
                          top: getHeight(AppDimensions.paddingS),
                        ),
                        child: CustomSvgIcon(
                          assetName: ImagePath.search,
                          color: AppColors.backgroundDark.withAlpha(200),
                        ),
                      ),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: getWidth(AppDimensions.paddingXXXL),
                        minHeight: getHeight(AppDimensions.paddingXXXL),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(height: getHeight(AppDimensions.spaceM)),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.jobs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.only(top: getHeight(AppDimensions.fontXL)),
                      child: designcontainer(
                        size,
                        index: index,
                        title: controller.jobs[index]['title'],
                        subtitle: controller.jobs[index]['subtitle'],
                        image: controller.jobs[index]['image'],
                        icon: Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.favorite[index] =
                                  !controller.favorite[index];
                            },
                            child: controller.favorite[index]
                                ? Padding(
                                    padding:  EdgeInsets.only(
                                      right: getWidth(AppDimensions.radiusM,)
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: getHeight(AppDimensions.radiusXXL,)
                                    ),
                                  )
                                : Padding(
                                    padding:  EdgeInsets.only(
                                      right:getWidth( AppDimensions.radiusM,)
                                    ),
                                    child: CustomSvgIcon(
                                      assetName: ImagePath.heard,
                                      width: getWidth(25),
                                      height: getHeight(25),
                                      color: AppColors.backgroundDark.withAlpha(
                                        150,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget? designcontainer(
    Size size, {
    int? index,
    String? title,
    String? subtitle,
    String? image,
    Widget? icon,
  }) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: AppColors.backgroundLight.withAlpha(20))],
        borderRadius: BorderRadius.circular(getRadius(AppDimensions.radiusXL)),
        color: AppColors.elevatedSurfaceLight,
      ),
      child: Padding(
        padding:  EdgeInsets.all(getRadius(AppDimensions.paddingXL)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSvgIcon(
                  assetName: image!,
                  width: getWidth(AppDimensions.ImageXXS),
                  height: getHeight(AppDimensions.ImageXXS),
                ),
                Spacer(),
                icon!,
              ],
            ),

            SizedBox(height: getHeight(AppDimensions.spaceM)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600,
                    fontSize: getSp(AppDimensions.fontXS),
                    color: Color(0xff00171D),
                  ),
                  "$title! ",
                ),
                Text(
                  "•",
                  style: TextStyle(
                    fontSize: AppDimensions.fontX,
                    color: AppColors.backgroundDark.withAlpha(80),
                  ),
                ),

                Text(
                  " 5 days ago",
                  style: GoogleFonts.dmSans(
                    color: AppColors.backgroundDark.withAlpha(190),
                    fontSize: AppDimensions.fontXS,
                  ),
                ),
              ],
            ),
            SizedBox(height: AppDimensions.paddingXS),
            Text(
              "$subtitle!",
              style: TextStyle(
                fontSize: AppDimensions.fontXL,
                color: AppColors.backgroundDark,
                fontFamily: "Means",
              ),
            ),
            SizedBox(height: AppDimensions.paddingS),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(
                    top: AppDimensions.paddingYS,
                    bottom: AppDimensions.paddingYS,
                    start: AppDimensions.paddingSX,
                    end: AppDimensions.paddingXS,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimensions.iconXL),
                    color: AppColors.jobmistirostcolor.withAlpha(180),
                    border: BoxBorder.all(color: AppColors.jobmistirostcolor),
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
                    start: AppDimensions.paddingXS,
                    end: AppDimensions.paddingXS,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimensions.iconXL),
                    color: AppColors.joblightskyblur.withAlpha(180),
                    border: BoxBorder.all(color: AppColors.joblightskyblur),
                  ),
                  child: Center(
                    child: Text(
                      "Senior Lavel",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w100,
                        fontSize: AppDimensions.radiusM,
                        color: Color(0xff0071B7),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: AppDimensions.spaceM),
                Container(
                  padding: EdgeInsetsDirectional.only(
                    top: AppDimensions.paddingYS,
                    bottom: AppDimensions.paddingYS,
                    start: AppDimensions.paddingXS,
                    end: AppDimensions.paddingXS,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimensions.iconXL),
                    color: AppColors.joblightminigreen.withAlpha(180),
                    border: BoxBorder.all(color: AppColors.joblightminigreen),
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
            SizedBox(height: AppDimensions.radiusYYL),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "\$200-\$250",
                      style: GoogleFonts.dmSans(
                        fontSize: AppDimensions.fontS,
                        fontWeight: FontWeight.bold,
                        color: AppColors.backgroundDark,
                      ),
                    ),
                    Text(
                      "New York, USA",
                      style: GoogleFonts.dmSans(fontSize: AppDimensions.fontXS),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(Jobdeatiles());
                  },

                  child: Container(
                    padding: EdgeInsetsGeometry.symmetric(
                      vertical: AppDimensions.paddingM,
                      horizontal: AppDimensions.paddingL,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppDimensions.paddingXXL,
                      ),
                      color: index == 1 ? Color(0xFFffb100) : Color(0xff006778),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "View Details",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: AppDimensions.fontS,
                            color: index == 1
                                ? AppColors.backgroundDark
                                : AppColors.backgroundLight,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: AppDimensions.radiusM),
                        CustomSvgIcon(
                          assetName: ImagePath.corner,
                          width: AppDimensions.paddingXL,
                          height: AppDimensions.paddingXL,
                          color: index == 1
                              ? AppColors.backgroundDark
                              : AppColors.backgroundLight,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cstomeTextFiled({Icon? prefixIcon, String? text}) {
    return Container(
      height: AppDimensions.inputHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getRadius(AppDimensions.inputHeight)),
        color: AppColors.elevatedSurfaceLight,
      ),
      child: TextFormField(
        decoration: InputDecoration(prefixIcon: prefixIcon, hintText: text),
      ),
    );
  }
}
