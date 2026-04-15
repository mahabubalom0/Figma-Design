import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../utils/textstyle.dart';

class Custometextfiled extends StatelessWidget {
  final String? titletextc;
  final String hintText;
  final Widget suffixIcon;
  const Custometextfiled({
    super.key,
    this.titletextc,
    required this.hintText,
    required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titletextc!, style: Textstyles().textL()),
          SizedBox(height: 8),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.elevatedSurfaceLight,
            ),
            clipBehavior: Clip.hardEdge,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Textstyles().texthint(fontsize: 12),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: suffixIcon,
                ),
                suffixIconConstraints: BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                filled: true,
                fillColor: Colors.transparent,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
