import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeBluegray90016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray40004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray40004,
      );
  static get bodyLargeGray40005 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyLargeInterBlack900 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargeNunito => theme.textTheme.bodyLarge!.nunito;
  static get bodyLargeNunitoGray40005 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeOnErrorContainer16 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargePoppins => theme.textTheme.bodyLarge!.poppins.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLargePoppinsBluegray900 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargePoppinsGray40005 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray40001,
        fontSize: 17.fSize,
      );
  static get bodyLargePoppinsOnErrorContainer =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyLargePoppinsOnErrorContainer_1 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumDMSansGray90002 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.gray90002,
        fontSize: 14.fSize,
      );
  static get bodyMediumNunitoBlack900 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins;
  static get bodyMediumPoppinsGray90002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray90002,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsRed500 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.red500,
      );
  static get bodyMediumRobotoOnErrorContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumRobotoPrimary =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBlack90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 12.fSize,
      );
  static get bodySmallDMSansBluegray40002 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodySmallDMSansGray90001 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.gray90001,
        fontSize: 10.fSize,
      );
  static get bodySmallDMSansGray90001_1 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallGray90001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001.withOpacity(0.6),
      );
  static get bodySmallIndigo900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo900.withOpacity(0.53),
      );
  static get bodySmallIndigo900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo900,
      );
  static get bodySmallIndigo900_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo900.withOpacity(0.53),
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsBlack900_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallPoppinsBluegray300 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallPoppinsBluegray30012 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray300,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBluegray400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGray50002 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray50002,
        fontSize: 8.fSize,
      );
  static get bodySmallPoppinsGray90001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray90001,
        fontSize: 8.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsGray9000112 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray90001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGray90001Light =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray90001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsGray90002 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray90002.withOpacity(0.6),
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsIndigo900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo900.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsIndigo90012 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo900,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsIndigo90012_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo900.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsOnErrorContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmallPoppinsPrimary =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallPoppinsPrimaryLight =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary8 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  // Display text style
  static get displayMediumRoboto =>
      theme.textTheme.displayMedium!.roboto.copyWith(
        fontSize: 40.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBluegray900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineSmallDMSansGray90001 =>
      theme.textTheme.headlineSmall!.dMSans.copyWith(
        color: appTheme.gray90001,
      );
  static get headlineSmallGray90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get headlineSmallGray90002 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get headlineSmallIndigo900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigo900,
      );
  static get headlineSmallInterBluegray900 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineSmallRoboto =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Inter text style
  static get interBluegray900 => TextStyle(
        color: appTheme.blueGray900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interBluegray900Bold => TextStyle(
        color: appTheme.blueGray900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interOnErrorContainer => TextStyle(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interYellow800 => TextStyle(
        color: appTheme.yellow800,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBlack900SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get labelLargeDMSansIndigo500 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.indigo500,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeDMSansRed50001 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.red50001,
      );
  static get labelLargeDMSansTeal400 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get labelLargeGray90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90001,
      );
  static get labelLargeIndigo500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo500,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeIndigo900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900,
      );
  static get labelLargeIndigo900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900.withOpacity(0.53),
      );
  static get labelLargeLightblueA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlueA200,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins;
  static get labelLargePoppinsBlack900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsBluegray300 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelLargePoppinsGray800 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray800,
      );
  static get labelLargePoppinsGray90002 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray90002,
      );
  static get labelLargePoppinsIndigo900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.indigo900,
      );
  static get labelLargePoppinsLightblueA200 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.lightBlueA200,
      );
  static get labelLargePoppinsOnErrorContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get labelLargePoppinsOnPrimaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimarySemiBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRed50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red50001,
      );
  static get labelLargeRobotoOnErrorContainer =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w800,
      );
  static get labelLargeRobotoOnErrorContainerSemiBold =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTeal400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumLightblueA200 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightBlueA200,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnErrorContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Poppins text style
  static get poppinsOnErrorContainer => TextStyle(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).poppins;
  // Title text style
  static get titleLargeDMSansGray90001 =>
      theme.textTheme.titleLarge!.dMSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeDMSansGray90002 =>
      theme.textTheme.titleLarge!.dMSans.copyWith(
        color: appTheme.gray90002,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w900,
      );
  static get titleLargePrimaryBlack => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w900,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBluegray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray100,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray10001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSans => theme.textTheme.titleMedium!.dMSans.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansGray90001 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansGray90001Medium =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansGray90001Medium_1 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansGray90002 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray90002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansGray90002Medium =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray90002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansGray90002Medium16 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray90002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansRed50001 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.red50001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 17.fSize,
      );
  static get titleMediumIndigo900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumIndigo90016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
        fontSize: 16.fSize,
      );
  static get titleMediumIndigo90016_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
        fontSize: 16.fSize,
      );
  static get titleMediumIndigo900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumIndigo900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
      );
  static get titleMediumIndigo900_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterGray90002 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterGray90003 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray10003,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterOnErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterPrimaryBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumOnErrorContainer17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 17.fSize,
      );
  static get titleMediumOnErrorContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleMediumOnErrorContainer_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleMediumOnErrorContainer_3 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleMediumRed500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red500,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRed50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red50001,
        fontWeight: FontWeight.w500,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleMedium_2 => theme.textTheme.titleMedium!;
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDMSansGray90001 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansGray90001Medium =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansOnErrorContainer =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallIndigo900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo900,
        fontSize: 15.fSize,
      );
  static get titleSmallIndigo900Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallIndigo900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo900,
      );
  static get titleSmallMontserratGray500 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMontserratGray500Medium =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMontserratGray500_1 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallMontserratRed400 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.red400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnErrorContainer15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get titleSmallPoppinsBlack900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsGray500 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallPoppinsGray50001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray50001,
      );
  static get titleSmallPoppinsIndigo900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsOnErrorContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsOnErrorContainerBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get philosopher {
    return copyWith(
      fontFamily: 'Philosopher',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
