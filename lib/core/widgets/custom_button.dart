import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_size_class.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final bool? isClip;
  final bool? fontFamily;
  final double? buttonSize;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.color,
    this.textColor,
    this.icon,
    this.isClip,
    this.fontFamily, this.buttonSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height:buttonSize?? getHeight(AppDimensions.buttonHeight),
      child: ClipRRect(
        borderRadius: isClip == null
            ? BorderRadiusGeometry.zero
            : BorderRadiusGeometry.circular(getRadius(AppDimensions.radius32)),
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? context.appColors.primary,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                getRadius(AppDimensions.radiusM),
              ),
            ),
          ),
          child: isLoading
              ? SizedBox(
                  height: getRadius(AppDimensions.iconL),
                  width: getRadius(AppDimensions.iconL),
                  child: CircularProgressIndicator(
                    color: textColor ?? Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) ...[
                      Icon(
                        icon,
                        color: textColor ?? Colors.white,
                        size: getRadius(AppDimensions.iconM),
                      ),
                      SizedBox(width: getWidth(AppDimensions.spaceS)),
                    ],
                    Text(
                      text,
                      style: fontFamily == null
                          ? TextStyle(
                              fontSize: getSp(AppDimensions.fontL),
                              fontWeight: FontWeight.bold,
                              color: textColor ?? Colors.white,
                            )
                          : GoogleFonts.plusJakartaSans(
                              fontSize: getSp(AppDimensions.fontM),
                              fontWeight: FontWeight.w600,
                              color:textColor ?? AppColors.backgroundDark,
                            ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
