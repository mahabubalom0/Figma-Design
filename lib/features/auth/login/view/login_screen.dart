import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:file_uploader/core/core.dart';
import '../../../../core/utils/textstyle.dart';
import '../controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return Scaffold(
      body: SizedBox(
        width: getWidth(double.infinity),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(AppStrings.logins.tr,style: Textstyles().leargertext(),),
         // SizedBox(height: getHeight(),)
          ],
        ),
      ),
    );
  }
}
