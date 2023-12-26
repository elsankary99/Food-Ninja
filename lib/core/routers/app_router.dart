import 'package:auto_route/auto_route.dart';
import 'package:food_ninja/views/pages/login/login_page.dart';
import 'package:food_ninja/views/pages/onboarding/onboarding_page.dart';
import 'package:food_ninja/views/pages/signup/sign_up_page.dart';
import 'package:food_ninja/views/pages/splash/splash_page.dart';

part 'app_router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnBoardingRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SignUpRoute.page),
      ];
}
