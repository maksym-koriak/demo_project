import 'package:auto_route/annotations.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: ConnectivityWrapperScreen,
      initial: true,
      children: [
        AutoRoute(
          page: AuthStateWrapperScreen,
          initial: true,
        ),
        AutoRoute(
          page: UnauthorizedFlowWrapperScreen,
          children: [

            AutoRoute(page: SignInScreen, initial: true,),
            AutoRoute(page: ForgotPasswordScreen),
            AutoRoute(page: RecoveryPasswordInputScreen),
            AutoRoute(page: TermsAndConditionsScreen),
            AutoRoute(page: PhoneOrEmailScreen),
            AutoRoute(page: PasswordScreen),
            AutoRoute(page: NicknameScreen),
            AutoRoute(page: FullNameScreen),
            AutoRoute(page: BirthdayScreen),
            AutoRoute(page: VerificationCodeScreen),
          ],
        ),
        AutoRoute(
          page: AuthorizedFlowWrapperScreen,
          children: [
            //optional profile set up
            AutoRoute(page: GalleryImagePickerScreen),
            AutoRoute(page: TakePhotoScreen),
            AutoRoute(page: CropPhotoScreen),
            AutoRoute(page: AddPhotoScreen),
            AutoRoute(page: CityScreen),
            AutoRoute(page: BioScreen),
            //chat
            AutoRoute(page: ChatScreen),
            AutoRoute(page: ChatInfoScreen),
            AutoRoute(page: ChatListScreen),
            //search
            AutoRoute(page: SearchScreen),
            //feed
            AutoRoute(page: FeedScreen),
            //user
            AutoRoute(page: ProfileScreen, initial: true),
            AutoRoute(page: EditScreen),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
