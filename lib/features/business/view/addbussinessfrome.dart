import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/textstyle.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import '../../../core/widgets/customeTextfiled.dart';

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
        title: Text("Add Business", style: Textstyles().medialtext()),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18),
        child: Column(
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
              suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
            ),
            SizedBox(height: 12),
            Custometextfiled(
              titletextc: "Category",
              hintText: "Select category",
              suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
            ),
            SizedBox(height: 12),
            Custometextfiled(
              titletextc: "Business Tag",
              hintText: "Select tag",
              suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
            ),

          ],
        ),
      ),
    );
  }
}
