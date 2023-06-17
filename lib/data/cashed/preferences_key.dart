class PreferencesKey {
  static const String kLoginStatus = 'loginStatus';
  static const String kStartupScreenStatus = 'startupScreenStatus';
  static const String kThemeStatus = 'themeStatus';
  static const String kOtp = 'otp';
  static const String kUser = 'user';
  static const String kUserContact = 'userContact';
  static const String kVarsity = 'varsity';
  static const String kHall = 'hall';
  static const String kRoom = 'room';
  static const String kName = 'name';
  static const String kUserId = 'userId';
  static const String kAccessToken = 'accessToken';
  static const String kRefreshToken = 'refreshToken';
  static const String kProfileImagePath = 'profileImagePath';
  static const String kProfileImageUrl = 'profileImageUrl';
  static const String kIsUserProfileUpdated = 'isUserProfileUpdated';
  static const String kFCMToken = 'fcm_token';
  static const String kFCMTokenShouldNotUpdate = 'fcm_token_should_update';
  static const String kShownDashboardPopUps = 'shown_dashboard_pop_ups';
  static const String kIsShownDashboardPopUpsToDay =
      'k_is_shown_dashboard_pop_ups_to_day';

  ///Dashboard

  static const String kUserProfileCompletePopupDate =
      'userProfileCompletePopupDate';

  ///Coin
  static const String kUserCoin = 'userCoin';

  ///Shop
  ///cart

  static const String kYourShopCarts = 'yourShopCarts';
  static const String kYourShopAdminMachineId = 'yourShopAdminMachineId';
  static const String kYourShopDevMachineId = 'yourShopDevMachineId';
  static const String kYourShopTableMachineId = 'yourShopTableMachineId';

  ///Laundry
  /// Laundry machine location
  static const String kUserLastLaundryMachineArea =
      'kUserLastLaundryMachineArea';
  static const String kUserLastLaundryMachineLocation =
      'kUserLastLaundryMachineLocation';

  ///Laundry Order Date
  static const String kUserLastLaundryWashSelectedDate = 'kUserSelectedDate';

  ///Laundry Order Date
  static const String kUserPurchasedPackages = 'userPurchasedPackages';

  ///Laundry Wash Progress
  // static const String kUserLaundryWashStartTime  = 'kUserLaundryWashStartTime';
  // static const String kUserLaundryWashEndTime  = 'kUserLaundryWashEndTime';
  // static const String kIsWashProgressVisible = 'kIsWashProgressVisible';

  ///Laundry Order
  static const String kUserSelectedLaundryMachineId =
      'kUserSelectedLaundryMachineId';
  static const String kUserSelectedLaundryMachineName =
      'kUserSelectedLaundryMachineName';
  static const String kUserSelectedLaundryMachineDescription =
      'kUserSelectedLaundryMachineDescription';
  static const String kUserSelectedLaundryWashType =
      'kUserSelectedLaundryWashType';
  static const String kUserSelectedLaundryWashTypeModel =
      'kUserSelectedLaundryWashTypeModel';
  static const String kUserSelectedLaundryBookingTime =
      'kUserSelectedLaundryBookingTime';

  ///Laundry Home tutorials
  static const String kLaundryHomeTutorialShown = 'kLaundryHomeTutorialShown';

  ///Notification Services

  // static const String kUserFCMToken  = 'userFCMToken';
  static const String kIsUserFCMUpdated = 'isUserFCMUpdated';

  ///Notification Services
  static const String kIsWashingPowderAlreadyClaimed =
      'isWashingPowderAlreadyClaimed';
}
