import 'package:get/get.dart';
import 'package:file_uploader/routes/app_routes.dart';

import 'package:file_uploader/features/splash/view/splash_screen.dart';
import 'package:file_uploader/features/onboarding/view/onboarding_screen.dart';
import 'package:file_uploader/features/auth/login/view/login_screen.dart';
import 'package:file_uploader/features/main/view/main_screen.dart';
import 'package:file_uploader/features/home/view/home_screen.dart';

import '../features/business/view/addbusiness.dart';
import '../features/business/view/addbussinessfrome.dart';
import '../features/business/view/businessdetails.dart';
import '../features/business/view/businesspage.dart';
import '../features/job deaitels/view/jobdeatiles.dart';
import '../features/job/view/job.dart';

class AppPages {
  // Bindings are now handled globally in AppBinding (fenix: true)
  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.onboarding, page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.main, page: () => const MainScreen()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
    GetPage(name: AppRoutes.job, page: () => const Job()),
    GetPage(name: AppRoutes.jobdeatiles, page: () => const Jobdeatiles()),
    GetPage(name: AppRoutes.addbusiness, page: () => const Addbusiness()),
    GetPage(name: AppRoutes.addbusinessfrome, page: () => const Addbussinessfrome()),
    GetPage(name: AppRoutes.businesspage, page: () => const Businesspage()),
    GetPage(name: AppRoutes.businessdetails, page: () => const Businessdetails()),
  ];
}
