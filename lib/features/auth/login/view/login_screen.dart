import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:file_uploader/core/core.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/textstyle.dart';
import '../../../../core/widgets/TextFiled.dart';
import '../../../../core/widgets/custom_svg_icon.dart';
import '../../../../core/widgets/Business_from_custom_TextFiled.dart';
import '../controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return Scaffold(
      body: SizedBox(
        width: getWidth(double.infinity),
        child: Padding(
          padding: EdgeInsets.only(
            left: getWidth(AppDimensions.padding36),
            right: getHeight(AppDimensions.padding36),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(AppStrings.logins.tr, style: Textstyles().leargertext()),
              SizedBox(height: getHeight(AppDimensions.spaceXXL)),
              Textfiled(
                AppStrings.email.tr,
                (value) {},
                CustomSvgIcon(
                  assetName: ImagePath.email,
                  height: getHeight(AppDimensions.height20),
                  width: getWidth(AppDimensions.height20),
                ),

              ),
              SizedBox(height: getHeight(AppDimensions.spaceL)),
              Textfiled(
                AppStrings.password.tr,
                (value) {},
                Icon(Icons.eighteen_mp),
                suffixIcon: Icon(Icons.eighteen_mp_outlined),
              ),
              SizedBox(height: getHeight(AppDimensions.spaceL)),
              Text(
                "${AppStrings.forgot_password}?",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: getSp(AppDimensions.fontS),
                  fontFamily: "satoshi",
                  decoration: TextDecoration.underline,
                  color: AppColors.backgroundDark.withValues(alpha: 0.7),
                ),
              ),
              SizedBox(height: getHeight(AppDimensions.spaceL)),

              CustomButton(
                text: "dd",
                onPressed: () {},
                color: AppColors.buttoncolor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Textfiled(
    String? hintText,
    String? Function(String?)? validator,
    Widget preffixIcon, {
    Widget? suffixIcon,
  }) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getRadius(AppDimensions.radiusCircular),
        ),
        color: AppColors.elevatedSurfaceLight,
        border: BoxBorder.all(
          width: getWidth(AppDimensions.borderWidth1_25),
          color: AppColors.backgroundDark.withValues(alpha: 0.2),
        ),
      ),
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          contentPadding: EdgeInsetsGeometry.only(
            top: getHeight(AppDimensions.content2),
            bottom: getHeight(AppDimensions.content2),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: preffixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: "satoshi",
            fontSize: getSp(AppDimensions.fontS),
            fontWeight: FontWeight.w500,
            color: AppColors.backgroundDark.withValues(alpha: 0.4),
          ),
          filled: true,
          fillColor: Colors.transparent,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
