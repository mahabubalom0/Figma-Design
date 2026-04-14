import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/theme.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/custom_svg_icon.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(AppStrings.myProfile.tr, style: Textstyles().medialtext()),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppDimensions.padding18,
              right: AppDimensions.padding18,
              bottom: AppDimensions.padding18,
              top: AppDimensions.padding24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentGeometry.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: AppDimensions.height72,
                        width: AppDimensions.weight72,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.elevatedSurfaceLight,
                          image: DecorationImage(
                            image: AssetImage(ImagePath.persion),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: AppDimensions.padding10),
                      Text(AppStrings.sarahMitchel, style: Textstyles().medialtext()),
                      SizedBox(height: AppDimensions.padding14),
                      Text(
                        "Edit Profile",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: AppDimensions.fontX,
                          color: AppColors.backgroundDark,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppDimensions.height24),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppDimensions.radiusXL,
                          ),
                          color: AppColors.elevatedSurfaceLight,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: AppDimensions.paddingM,
                            bottom: AppDimensions.paddingM,
                            right: AppDimensions.padding16,
                            left: AppDimensions.padding16,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                size: AppDimensions.iconXXL,
                                color: AppColors.red,
                              ),
                              SizedBox(width: AppDimensions.padding16),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                   AppStrings.favourite.tr,
                                    style: Textstyles().smalltext(),
                                  ),
                                  Text(
                                    AppStrings.fiveitem.tr,
                                    style: Textstyles().textL(
                                      fontsize: AppDimensions.fontXS,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: AppDimensions.padding13),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppDimensions.radiusXL,
                          ),
                          color: AppColors.elevatedSurfaceLight,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: AppDimensions.paddingM,
                            bottom: AppDimensions.paddingM,
                            right: AppDimensions.padding16,
                            left: AppDimensions.padding16,
                          ),
                          child: Row(
                            children: [
                              CustomSvgIcon(assetName: ImagePath.business),
                              SizedBox(width: AppDimensions.padding16),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppStrings.listing.tr,
                                    style: Textstyles().smalltext(),
                                  ),
                                  Text(
                                    AppStrings.twobusiness.tr,
                                    style: Textstyles().textL(
                                      fontsize: AppDimensions.fontXS,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppDimensions.padding22),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.account.tr, style: Textstyles().smalltext()),
                    SizedBox(height: AppDimensions.padding18),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsetsGeometry.all(AppDimensions.padding16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppDimensions.radiusXL,
                        ),
                        color: AppColors.elevatedSurfaceLight,
                      ),
                      child: Column(
                        children: [
                          aboutcustome(ImagePath.user, AppStrings.myAccount.tr),
                          SizedBox(height: AppDimensions.padding18),
                          Divider(),
                          SizedBox(height: AppDimensions.padding18),
                          aboutcustome(ImagePath.storepro, AppStrings.mybusiness.tr),
                          SizedBox(height: AppDimensions.padding18),
                          Divider(),
                          SizedBox(height: AppDimensions.padding18),
                          aboutcustome(ImagePath.notification, AppStrings.notification.tr),
                        ],
                      ),
                    ),
                    SizedBox(height: AppDimensions.paddingXL),
                    Text(AppStrings.payment.tr, style: Textstyles().smalltext()),
                    SizedBox(height: AppDimensions.paddingL),
                    Container(
                      padding: EdgeInsetsGeometry.all(AppDimensions.padding14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppDimensions.radiusXL,
                        ),
                        color: AppColors.elevatedSurfaceLight,
                      ),
                      child: Row(
                        children: [
                          CustomSvgIcon(
                            assetName: ImagePath.money,
                            width: AppDimensions.weight20,
                            height: AppDimensions.height20,
                            color: AppColors.backgroundDark.withAlpha(140),
                          ),
                          SizedBox(width: AppDimensions.paddingS),
                          Text(
                            AppStrings.upgradetoPremium.tr,
                            style: GoogleFonts.dmSans(
                              fontSize: AppDimensions.fontM,
                              fontWeight: FontWeight.w400,
                              color: AppColors.backgroundDark.withAlpha(180),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: AppDimensions.fontXXXL,
                            color: AppColors.backgroundDark.withAlpha(120),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppDimensions.height22),
                Text(AppStrings.support.tr, style: Textstyles().smalltext()),
                SizedBox(height: AppDimensions.height20),
                Container(
                  padding: EdgeInsetsGeometry.all(AppDimensions.padding16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimensions.radiusXL),
                    color: AppColors.elevatedSurfaceLight,
                  ),
                  child: Column(
                    children: [
                      aboutcustome(ImagePath.hellp, AppStrings.helpCenter.tr),
                      SizedBox(height: AppDimensions.padding18),
                      Divider(),
                      SizedBox(height: AppDimensions.padding18),
                      aboutcustome(ImagePath.law, AppStrings.TermsConditions.tr),
                      SizedBox(height: AppDimensions.padding18),
                      Divider(),
                      SizedBox(height: AppDimensions.padding18),
                      aboutcustome(ImagePath.suppport, AppStrings.privacypolicy.tr),
                    ],
                  ),
                ),

                SizedBox(height: AppDimensions.padding36),
                customebutton(),
                SizedBox(height: AppDimensions.padding26),
                Container(
                  margin: EdgeInsetsGeometry.only(
                    left: AppDimensions.padding60,
                    right: AppDimensions.padding60,
                  ),
                  padding: EdgeInsetsGeometry.only(
                    top: AppDimensions.padding14,
                    left: AppDimensions.padding18,
                    right: AppDimensions.padding16,
                    bottom: AppDimensions.padding14,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimensions.radius32),
                    color: AppColors.elevatedSurfaceLight,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Row(
                            children: [
                              CustomSvgIcon(assetName: ImagePath.home),
                              SizedBox(width: AppDimensions.padding26),
                              CustomSvgIcon(assetName: ImagePath.store2),
                              SizedBox(width: AppDimensions.padding26),
                              CustomSvgIcon(assetName: ImagePath.ai),
                            ],
                          ),
                        ),
                        SizedBox(width: AppDimensions.padding26),
                        Container(
                          padding: EdgeInsetsGeometry.only(
                            top: AppDimensions.paddingSX,
                            bottom: AppDimensions.paddingSX,
                            right: AppDimensions.padding10,
                            left: AppDimensions.padding10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppDimensions.radiusCircular,
                            ),
                            color: AppColors.buttoncolor.withAlpha(30),
                          ),
                          child: Row(
                            children: [
                              CustomSvgIcon(
                                assetName: ImagePath.userfill,
                                width: AppDimensions.weight24,
                                height: AppDimensions.height24,
                              ),
                              SizedBox(width: AppDimensions.paddingSX),
                              Text(
                                AppStrings.account.tr,
                                style: GoogleFonts.dmSans(
                                  fontSize: AppDimensions.fontS,
                                  color: AppColors.buttoncolor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: AppDimensions.weight24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customebutton() {
    return Container(
      padding: EdgeInsetsGeometry.only(
        left: AppDimensions.padding94,
        right: AppDimensions.padding94,
        top: AppDimensions.padding14,
        bottom: AppDimensions.padding14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.radius32),
        color: AppColors.buttoncolor,
      ),
      child: Center(
        child: Text(
          AppStrings.SingOut.tr,
          style: GoogleFonts.plusJakartaSans(
            fontSize: AppDimensions.fontM,
            fontWeight: FontWeight.w600,
            color: AppColors.elevatedSurfaceLight,
          ),
        ),
      ),
    );
  }

  Widget aboutcustome(String? svg, String? text) {
    return Column(
      children: [
        Row(
          children: [
            CustomSvgIcon(
              assetName: svg!,
              width: AppDimensions.weight20,
              height: AppDimensions.height20,
              color: AppColors.backgroundDark.withAlpha(200),
            ),
            SizedBox(width: AppDimensions.weight10),
            Text(
              text!,
              style: GoogleFonts.dmSans(
                fontSize: AppDimensions.fontM,
                fontWeight: FontWeight.w400,
                color: AppColors.backgroundDark.withAlpha(180),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: AppDimensions.fontXXXL,
              color: AppColors.backgroundDark.withAlpha(120),
            ),
          ],
        ),
      ],
    );
  }
}
