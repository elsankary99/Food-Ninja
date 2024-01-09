import 'package:auto_route/auto_route.dart';
import 'package:food_ninja/views/pages/auth/login/login_page.dart';
import 'package:food_ninja/views/pages/auth/reset_password/reset_password_page.dart';
import 'package:food_ninja/views/pages/created_successfully/created_successfully_page.dart';
import 'package:food_ninja/views/pages/home/initial_page.dart';
import 'package:food_ninja/views/pages/nearest_restaurant/nearest_restaurant_page.dart';
import 'package:food_ninja/views/pages/onboarding/onboarding_page.dart';
import 'package:food_ninja/views/pages/payment_method/payment_method_page.dart';
import 'package:food_ninja/views/pages/popular_menu/popular_menu_page.dart';
import 'package:food_ninja/views/pages/set_location/set_location_page.dart';
import 'package:food_ninja/views/pages/auth/signup/sign_up_page.dart';
import 'package:food_ninja/views/pages/splash/splash_page.dart';
import 'package:food_ninja/views/pages/upload_photo/upload_photo_page.dart';
import 'package:food_ninja/views/pages/user_info/user_info_page.dart';

part 'app_router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnBoardingRoute.page),
        //?Auth
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: ResetPasswordRoute.page),
        AutoRoute(page: UserInformationRoute.page),
        AutoRoute(page: PaymentMethodRoute.page),
        AutoRoute(page: UploadPhotoRoute.page),
        AutoRoute(page: SetLocationRoute.page),
        AutoRoute(page: CreatedSuccessfullyRoute.page),
        //?Home
        AutoRoute(page: InitialRoute.page),
        AutoRoute(page: NearestRestaurantRoute.page),
        AutoRoute(page: PopularMenuRoute.page),
      ];
}
