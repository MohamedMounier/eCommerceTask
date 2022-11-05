
import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'fonts_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData getAppTheme(BuildContext context){
  return ThemeData(
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     selectedItemColor: ColorManager.orange,
     selectedLabelStyle: getRegularTextStyle(color: ColorManager.orange),
     unselectedLabelStyle: getRegularTextStyle(color: ColorManager.black),
     showUnselectedLabels: true,
showSelectedLabels: true
   ),

    // colors
      primaryColor: ColorManager.orange,
      primaryColorLight: ColorManager.primary,
      primaryColorDark: ColorManager.primary,
      disabledColor: ColorManager.primary,
      splashColor: ColorManager.primary,
      backgroundColor: ColorManager.backGroundColor,
      // card view theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          elevation: AppSize.s4,
          shadowColor: ColorManager.grey
      ),

      //App bar Theme
      // Button Theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.primary,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.primary
      ),
      //elevated button theme data
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle:  getRegularTextStyle(fontSize:FontSize.s17,color: ColorManager.white),
              primary: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)
              )
          )
      ),
      // text theme
      textTheme: TextTheme(
          displayLarge: getBoldTextStyle(color: ColorManager.darkBlue,fontSize: FontSize.s31),
          headlineLarge: getSemiBoldTextStyle(color: ColorManager.primary,fontSize: FontSize.s10),
          headlineMedium: getMediumTextStyle(color: ColorManager.white,fontSize: FontSize.s11),
          titleMedium: getMediumTextStyle(color: ColorManager.black,fontSize: FontSize.s12),
          bodyLarge: getBoldTextStyle(color: ColorManager.lightBlack,fontSize: FontSize.s11),
          bodySmall: getLightTextStyle(color: ColorManager.lightBlack,fontSize: FontSize.s11),
         //TODO add Circular Std font
         // titleSmall: getRegularMediumGreyTextStyle(color: ColorManager.grey,fontSize: 13),
          bodyMedium: getMediumTextStyle(color: ColorManager.discountGrey,fontSize: FontSize.s11),
          displayMedium: getMediumTextStyle(fontSize: FontSize.s11,color: ColorManager.lightBlack)

      ),
      // input decoration theme
      inputDecorationTheme: InputDecorationTheme(
          //contentPadding: const EdgeInsets.all(AppPading.p8),
          hintStyle: getRegularTextStyle(color: ColorManager.black,fontSize: FontSize.s14),
          labelStyle: getMediumTextStyle(color: ColorManager.grey,fontSize: FontSize.s14),
          errorStyle: getRegularTextStyle(color: ColorManager.primary),
          border: InputBorder.none,
          // enabledBorder: OutlineInputBorder(
          //     borderSide: BorderSide(
          //       color: ColorManager.grey,
          //       width: AppSize.s1_5,
          //     ),
          //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
          // ),
          // // focused border side
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(
          //       color:  ColorManager.primary,
          //       width: AppSize.s1_5,
          //     ),
          //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
          // ),
          // // error border side
          // errorBorder: OutlineInputBorder(
          //     borderSide: BorderSide(
          //       color: ColorManager.primary,
          //       width: AppSize.s1_5,
          //     ),
          //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
          // ),
          // // focused error border
          // focusedErrorBorder: OutlineInputBorder(
          //     borderSide: BorderSide(
          //       color: ColorManager.primary,
          //       width: AppSize.s1_5,
          //     ),
          //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
          // )
      )
  );
}