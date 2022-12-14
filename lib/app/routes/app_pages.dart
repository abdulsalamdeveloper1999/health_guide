import 'package:get/get.dart';

import '../modules/ChangePassword/bindings/change_password_binding.dart';
import '../modules/ChangePassword/views/change_password_view.dart';
import '../modules/ContactUs/bindings/contact_us_binding.dart';
import '../modules/ContactUs/views/contact_us_view.dart';
import '../modules/EditProfile/bindings/edit_profile_binding.dart';
import '../modules/EditProfile/views/edit_profile_view.dart';
import '../modules/FacilityLookingFor/bindings/facility_looking_for_binding.dart';
import '../modules/FacilityLookingFor/views/facility_looking_for_view.dart';
import '../modules/HelpFaq/bindings/help_faq_binding.dart';
import '../modules/HelpFaq/views/help_faq_view.dart';

import '../modules/LifeThreatening/bindings/life_threatening_binding.dart';
import '../modules/LifeThreatening/views/life_threatening_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/LookingFor/bindings/looking_for_binding.dart';
import '../modules/LookingFor/views/looking_for_view.dart';
import '../modules/MinorIllness/bindings/minor_illness_binding.dart';
import '../modules/MinorIllness/views/minor_illness_view.dart';
import '../modules/MyProfile/bindings/my_profile_binding.dart';
import '../modules/MyProfile/views/my_profile_view.dart';
import '../modules/PrivacyPolicy/bindings/privacy_policy_binding.dart';
import '../modules/PrivacyPolicy/views/privacy_policy_view.dart';
import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/Results/bindings/results_binding.dart';
import '../modules/Results/views/results_view.dart';
import '../modules/Saved/bindings/saved_binding.dart';
import '../modules/Saved/views/saved_view.dart';
import '../modules/SeeDoctor/bindings/see_doctor_binding.dart';
import '../modules/SeeDoctor/views/see_doctor_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/Splash/bindings/splash_binding.dart';
import '../modules/Splash/views/splash_view.dart';
import '../modules/TermsCondition/bindings/terms_condition_binding.dart';
import '../modules/TermsCondition/views/terms_condition_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.FACILITY_LOOKING_FOR,
      page: () => FacilityLookingForView(),
      binding: FacilityLookingForBinding(),
    ),
    GetPage(
      name: _Paths.LOOKING_FOR,
      page: () => LookingForView(),
      binding: LookingForBinding(),
    ),
    GetPage(
      name: _Paths.LIFE_THREATENING,
      page: () => LifeThreateningView(),
      binding: LifeThreateningBinding(),
    ),
    GetPage(
      name: _Paths.SEE_DOCTOR,
      page: () => SeeDoctorView(),
      binding: SeeDoctorBinding(),
    ),
    GetPage(
      name: _Paths.MINOR_ILLNESS,
      page: () => MinorIllnessView(),
      binding: MinorIllnessBinding(),
    ),
    GetPage(
      name: _Paths.RESULTS,
      page: () => ResultsView(),
      binding: ResultsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SAVED,
      page: () => SavedView(),
      binding: SavedBinding(),
    ),
    GetPage(
      name: _Paths.MY_PROFILE,
      page: () => MyProfileView(),
      binding: MyProfileBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_US,
      page: () => ContactUsView(),
      binding: ContactUsBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACY_POLICY,
      page: () => PrivacyPolicyView(),
      binding: PrivacyPolicyBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_CONDITION,
      page: () => TermsConditionView(),
      binding: TermsConditionBinding(),
    ),
    GetPage(
      name: _Paths.HELP_FAQ,
      page: () => HelpFaqView(),
      binding: HelpFaqBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => EditProfileView(),
      binding: EditProfileBinding(),
    ),

  ];
}
