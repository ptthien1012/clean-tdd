import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cleantdd/core/core.dart';

class ThemeBuilder {
  static ThemeData build(BuildContext context, String theme) {
    final isDark = theme == AppTheme.dark.value;
    return _getTheme(context: context, isDark: isDark);
  }

  static ThemeMode themeMode(String theme) {
    switch (theme) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }

  static ThemeData _getTheme(
      {required BuildContext context, bool isDark = false}) {
    return ThemeData(
      fontFamily: FontFamilyConstants.fontBeVietNam,
      brightness: isDark ? Brightness.dark : Brightness.light,
      // unselectedWidgetColor: MyColors.buttonDisable,
      errorColor: MyColors.redColor,
      primaryColor: MyColors.primary,
      disabledColor: MyColors.grayTextColor3,
      primaryIconTheme: IconThemeData(
        color: isDark ? MyColors.primaryWhite : MyColors.primaryWhite,
        size: 24,
      ),
      primaryColorDark: MyColors.primaryDark,
      indicatorColor: isDark ? MyColors.primaryDark : MyColors.primary,
      scaffoldBackgroundColor: isDark ? Colors.transparent : Colors.transparent,
      backgroundColor:
          isDark ? MyColors.backgroundColor : MyColors.backgroundColor,
      canvasColor: MyColors.whiteColor,
      textTheme: TextTheme(
        bodyText1: TextStyles.textSize14
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .medium,
        bodyText2: TextStyles.textSize13
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .medium,
        subtitle1: TextStyles.textSize13
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .medium,
        subtitle2: TextStyles.textSize13
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .medium,
        headline1: TextStyles.textSize26
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .bold,
        headline2: TextStyles.textSize24
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .bold,
        headline3: TextStyles.textSize20
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .bold,
        headline4: TextStyles.textSize18
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .bold,
        headline5: TextStyles.textSize14
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .semiBold,
        headline6: TextStyles.textSize13
            .textColor(isDark ? MyColors.primaryWhite : MyColors.primaryDark)
            .medium,
        button: TextStyles.textSize16.primaryWhite.semiBold,
        caption: TextStyles.textSize13
            .textColor(
                isDark ? MyColors.grayTextColor3 : MyColors.grayTextColor3)
            .regular,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimens.size12),
            bottomRight: Radius.circular(Dimens.size12),
            bottomLeft: Radius.circular(Dimens.size12),
            topRight: Radius.circular(Dimens.size12),
          ),
        ),
        counterStyle: TextStyles.textSize12
            .textColor(
                isDark ? MyColors.grayTextColor3 : MyColors.grayTextColor3)
            .regular,
        hintStyle: TextStyles.textSize14
            .textColor(
                isDark ? MyColors.grayTextColor3 : MyColors.grayTextColor3)
            .regular,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimens.size12),
            bottomRight: Radius.circular(Dimens.size12),
            bottomLeft: Radius.circular(Dimens.size12),
            topRight: Radius.circular(Dimens.size12),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimens.size12),
            bottomRight: Radius.circular(Dimens.size12),
            bottomLeft: Radius.circular(Dimens.size12),
            topRight: Radius.circular(Dimens.size12),
          ),
        ),
        fillColor: isDark ? MyColors.whiteColor : MyColors.whiteColor,
        filled: true,
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: isDark ? MyColors.redColor : MyColors.redColor),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Dimens.size12),
            bottomRight: Radius.circular(Dimens.size12),
            bottomLeft: Radius.circular(Dimens.size12),
            topRight: Radius.circular(Dimens.size12),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: isDark ? MyColors.redColor : MyColors.redColor),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Dimens.size12),
            bottomRight: Radius.circular(Dimens.size12),
            bottomLeft: Radius.circular(Dimens.size12),
            topRight: Radius.circular(Dimens.size12),
          ),
        ),
        labelStyle: TextStyles.textSize14
            .textColor(
                isDark ? MyColors.grayTextColor3 : MyColors.grayTextColor3)
            .regular,
        errorStyle: TextStyles.textSize12
            .textColor(isDark ? MyColors.redColor : MyColors.redColor)
            .regular,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        titleSpacing: 0.0,
        titleTextStyle:
            TextStyles.textSize18.textColor(MyColors.blackTextColor1),
        iconTheme: IconThemeData(
          color: isDark ? MyColors.primary : MyColors.primary,
          size: 18,
        ),
        actionsIconTheme: IconThemeData(
          size: 18,
          color: isDark ? MyColors.primary : MyColors.primary,
        ),
        elevation: 0.0,
        color: isDark ? Colors.transparent : Colors.transparent,
      ),
      // dividerTheme: DividerThemeData(
      //   color: isDark ? MyColors.primaryWhite : MyColors.primaryDark,
      //   space: 1,
      //   thickness: 1,
      // ),
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: isDark ? Brightness.dark : Brightness.light,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor:
            isDark ? MyColors.backgroundColor : MyColors.backgroundColor,
      ),
      buttonTheme: ButtonThemeData(
        disabledColor: isDark ? MyColors.brownBGColor : MyColors.brownBGColor,
        buttonColor: isDark ? MyColors.primaryDark : MyColors.primaryWhite,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimens.size16),
            bottomRight: Radius.circular(Dimens.size16),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: MyColors.primary,
              textStyle: TextStyles.textBold18,
              padding: const EdgeInsets.symmetric(
                vertical: Dimens.size12,
                horizontal: Dimens.size16,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Dimens.size12)))),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        textStyle:
            TextStyles.textBold18.copyWith(color: MyColors.blackTextColor1),
        primary: MyColors.primary,
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.size12,
          horizontal: Dimens.size16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.size12),
          side: BorderSide(color: MyColors.primary),
        ),
      )),
      iconTheme: IconThemeData(
        color: isDark ? MyColors.primary : MyColors.primary,
        size: 24,
      ),
      dialogBackgroundColor:
          isDark ? MyColors.backgroundColor : MyColors.backgroundColor,
      timePickerTheme: TimePickerThemeData(
          backgroundColor: isDark ? MyColors.primaryDark : MyColors.primary),
      cardTheme: const CardTheme(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
