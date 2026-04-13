import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/app_images.dart';

class Controller extends GetxController {
  final TextEditingController searccontroller = TextEditingController();
  List jobs = [
    {
      "title": "Volkswagen",
      "subtitle": "Project Manager",
      "image": ImagePath.w,
    },
    {
      "title": "Bumble",
      "subtitle": "Restaurant Server",
      "image": ImagePath.bumble,
    },
    {
      "title": "McDonals’s",
      "subtitle": "Retail Sales Associate",
      "image": ImagePath.mcDonals,
    },
  ];
  RxList<bool> favorite = <bool>[false, false, false].obs;

}
