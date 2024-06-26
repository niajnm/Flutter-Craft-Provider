import 'package:flutter/material.dart';

abstract class AppColors {
  static Color barrierColor = const Color(0xFF000000).withOpacity(0.5);
  static Color inputFieldDisabledBorderColor = neutralGray;
  static Color inputFieldFocusedBorderColor = primaryGreen03;
  static Color prohibitedTimeHighlightedColor =
      const Color(0xFFAB0B0B).withOpacity(.25);
  static Color salatHighlightedColor = const Color(0xFFFCE588).withOpacity(.25);
  static Color salatTimeDividerColor = neutralSeparator;
  static Color salatTimeDividerColorDark = neutralGray;
  static Color searchFieldTextColor = const Color(0xFF323232).withOpacity(0.5);
  static Color selectedDropdownItemBackgroundColor =
      colorPrimaryDark.withAlpha(10);
  static const Color accentOrange = Color(0xFFF2994A);
  static const Color accentRed = Color(0xFFED4D4D);
  static const Color almostBlack = Color(0xFF1F3541);
  static const Color appBarColor = primaryGreen04;
  static const Color appBarColorDark = primaryGreen05;
  static const Color appBarIconColor = primaryGreen05;
  static const Color appBarTextColor = primaryGreen05;
  static const Color bottomItemSelectedColor = primaryGreen04;
  static const Color bottomItemUnselectedColor = primaryGreen05;
  static const Color bottomItemUnselectedColorDark = colorWhite;
  static const Color bottomNavColor = Color(0xFFF8F9FA);
  static const Color buttonBgColor = colorPrimary;
  static const Color centerTextColor = Colors.grey;
  static const Color colorAccent = Color(0xFF359D9E);
  static const Color colorBlack = Color(0xFF000000);
  static const Color colorDark = Color(0xFF323232);
  static const Color colorLightGreen = Color(0xFF00EFA7);
  static const Color colorPrimary = Color(0xFF55C595);
  static const Color colorPrimaryDark = Color(0xFF359D9E);
  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color dataTitleLabelColor = Color(0xFFA0ABB4);
  static const Color defaultRippleColor = Color(0x0338686A);
  static const Color lightGreenRippleColor = Color(0x1A00EFA7);
  static const Color disabledButtonBgColor = Color(0xFFBFBFC0);
  static const Color dropdownItemBackgroundColor = transparent;
  static const Color errorColor = Color(0xFFAB0B0B);
  static const Color gradientEndColor = Colors.transparent;
  static const Color gradientStartColor = Colors.black87;
  static const Color homeSummaryTextColor = Color(0xFFFFFFFF);
  static const Color horizontalCalendarBorderColor = Color(0xFFECEDF0);
  static const Color iconColorDefault = Colors.grey;
  static const Color importantBannerBackground = Color(0xFFFFF8EF);
  static const Color importantBannerBorder = Color(0xFFFBA63C);
  static const Color importantBannerButtonBackground = Color(0xFFF2994A);
  static const Color importantBannerMessage = Color(0xFFBC741A);
  static const Color importantBannerTitle = Color(0xFFE18109);
  static const Color inputFieldDescriptionTextColor = Color(0x99215273);
  static const Color inputFieldEnabledBorderColor = Color(0xFF545D69);
  static const Color inputFieldErrorBorderColor = Color(0xFFED4D4D);
  static const Color inputFieldErrorFillColor = Color(0xFFFEEFEF);
  static const Color inputFieldErrorMessageTextColor = accentRed;
  static const Color inputFieldFillColor = Color(0xFFF8F9FA);
  static const Color inputFieldHintTextColor = Color(0x80215273);
  static const Color inputFieldInfoBorderColor = Color(0xFFF2994A);
  static const Color inputFieldInfoFillColor = Color(0xFFEEF2FA);
  static const Color inputFieldInfoMessageTextColor = primaryGreen03;
  static const Color inputFieldSuccessBorderColor = Color(0xFF287D3C);
  static const Color inputFieldSuccessFillColor = Color(0xFFEDF9F0);
  static const Color inputFieldSuccessMessageTextColor = primaryGreen04;
  static const Color inputFieldWarningBorderColor = Color(0xFFB95000);
  static const Color inputFieldWarningFillColor = Color(0xFFFFF4EC);
  static const Color inputFieldWarningMessageTextColor = accentOrange;
  static const Color neutralAlmostBlack = Color(0xFF1F3541);
  static const Color neutralBannerBackground = Color(0xFFEFF8FF);
  static const Color neutralBannerBorder = Color(0xFF3CABFB);
  static const Color neutralBannerButtonBackground = Color(0xFF4DABED);
  static const Color neutralBannerMessage = Color(0xFF1A78BC);
  static const Color neutralBannerTitle = Color(0xFF0987E1);
  static const Color neutralGray = Color(0xFF6F7B83);
  static const Color neutralLightGray = Color(0xFFA0ABB4);
  static const Color neutralSeparator = Color(0xFFECEDF0);
  static const Color neutralBackground = Color(0xFFF8F9FA);
  static const Color pageBackground = Color(0xFFFAFBFD);
  static const Color pageBackgroundDark = neutralAlmostBlack;
  static const Color primaryGreen01 = Color(0xFFCFF4D2);
  static const Color primaryGreen02 = Color(0xFF7BE495);
  static const Color primaryGreen03 = Color(0xFF56C596);
  static const Color primaryGreen04 = Color(0xFF329D9C);
  static const Color primaryGreen05 = Color(0xFF215273);
  static const Color darkGreen = Color(0xFF082A09);
  static const Color bgTransparentPrimaryGreen04 = Color(0x66329D9C);
  static const Color saomCountDownBackground = Color(0xFFF8F9FA);
  static const Color saomCountDownBorder = Color(0xFFECEDF0);
  static const Color silverAppBarOverlayColor = Color(0x80323232);
  static const Color statusBarColor = Color(0xFFFFFFFF);
  static const Color switchActiveColor = colorPrimary;
  static const Color switchInactiveColor = Color(0xFFABABAB);
  static const Color textColorBlueGreyDark = Color(0xFF939699);
  static const Color textColorCyan = Color(0xFF38686A);
  static const Color textColorGreyDark = Color(0xFF979797);
  static const Color textColorGreyLight = Color(0xFFABABAB);
  static const Color textColorPrimary = Color(0xFF323232);
  static const Color textColorSecondary = Color(0xFF9FA4B0);
  static const Color textColorTag = colorPrimary;
  static const Color textColorWhite = Color(0xFFFFFFFF);
  static const Color transparent = Colors.transparent;
  static const Color urgentBannerBackground = Color(0xFFFFF2EF);
  static const Color urgentBannerBorder = Color(0xFFFB473C);
  static const Color urgentBannerMessage = Color(0xFFBC1A1A);
  static const Color urgentBannerTitle = Color(0xFFE12309);
  static const MaterialColor colorPrimarySwatch = Colors.cyan;
  static const Color blueWarningPrimaryColor = Color(0xFF3CABFB);
  static const Color blueWarningFillColor = Color(0xFFEFF8FF);
  static const Color redWarningPrimaryColor = Color(0xFFFB473C);
  static const Color redWarningFillColor = Color(0xFFFFF2EF);
  static const Color loaderBackground = Color(0x32000000);
  static const Color loaderTint = Color(0xFF288239);
  static const Color bgSnackbarSuccessLight = Color(0xFFE4F6DF);
  static const Color bgSnackbarErrorLight = Color(0xFFF9E1DC);
  static const Color bgSnackbarWarningLight = Color(0xFFFCF3EA);
  static const Color bgSnackbarSuccessDark = Color(0xFF0E1F00);
  static const Color bgSnackbarErrorDark = Color(0xFF1E1E1E);
  static const Color bgSnackbarWarningDark = Color(0xFF150900);
  static const Color neutral100 = Color(0xffF2F4F7);
  static const Color neutral500 = Color(0xff667085);
  static const Color neutral300 = Color(0xffD0D5DD);
}
