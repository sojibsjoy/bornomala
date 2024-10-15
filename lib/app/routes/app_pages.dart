import 'package:get/get.dart';

import '../modules/alphabet/bindings/alphabet_binding.dart';
import '../modules/alphabet/views/alphabet_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/poem/bindings/poem_binding.dart';
import '../modules/poem/views/poem_view.dart';
import '../modules/poem_list/bindings/poem_list_binding.dart';
import '../modules/poem_list/views/poem_list_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/vowels_usage/bindings/vowels_usage_binding.dart';
import '../modules/vowels_usage/views/vowels_usage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ALPHABET,
      page: () => const AlphabetView(),
      binding: AlphabetBinding(),
    ),
    GetPage(
      name: _Paths.VOWELS_USAGE,
      page: () => const VowelsUsageView(),
      binding: VowelsUsageBinding(),
    ),
    GetPage(
      name: _Paths.POEM,
      page: () => const PoemView(),
      binding: PoemBinding(),
    ),
    GetPage(
      name: _Paths.POEM_LIST,
      page: () => const PoemListView(),
      binding: PoemListBinding(),
    ),
  ];
}
