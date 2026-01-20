import 'package:flutter/material.dart';
import 'app_colors.dart';

@immutable
class AppTextTheme extends ThemeExtension<AppTextTheme> {
  const AppTextTheme({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.h6,
    required this.bodyLargeRegular,
    required this.bodyLargeMedium,
    required this.bodyLargeSemibold,
    required this.bodyLargeBold,
    required this.bodyMediumRegular,
    required this.bodyMediumMedium,
    
    required this.bodyMediumSemibold,
    required this.bodySmallRegular,
    required this.bodySmallMedium,
    required this.bodyExtraSmallRegular,
    required this.bodyExtraSmallMedium,
  });

  AppTextTheme.design()
    : this(
        h1: AppTextStyle.headingHeadingH1.copyWith(
          color: AppColors.brandTextColor,
        ),
        h2: AppTextStyle.headingHeadingH2.copyWith(
          color: AppColors.brandTextColor,
        ),
        h3: AppTextStyle.headingHeadingH3.copyWith(
          color: AppColors.brandTextColor,
        ),
        h4: AppTextStyle.headingHeadingH4.copyWith(
          color: AppColors.brandTextColor,
        ),
        h5: AppTextStyle.headingHeadingH5.copyWith(
          color: AppColors.brandTextColor,
        ),
        h6: AppTextStyle.headingHeadingH6.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodyLargeRegular: AppTextStyle.bodyLargeBodyLargeRegular.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodyLargeMedium: AppTextStyle.bodyLargeBodyLargeMedium.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodyLargeSemibold: AppTextStyle.bodyLargeBodyLargeSemibold.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodyLargeBold: AppTextStyle.bodyLargeBodyLargeBold.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodyMediumRegular: AppTextStyle.bodyMediumBodyMediumRegular.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodyMediumMedium: AppTextStyle.bodyMediumBodyMediumMedium.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodyMediumSemibold: AppTextStyle.bodyMediumBodyMediumSemibold.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodySmallRegular: AppTextStyle.bodySmallBodySmallRegular.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodySmallMedium: AppTextStyle.bodySmallBodySmallMedium.copyWith(
          color: AppColors.brandTextColor,
        ),
        bodyExtraSmallRegular: AppTextStyle.bodyExtraSmallBodyExtraSmallRegular
            .copyWith(color: AppColors.brandTextColor),
        bodyExtraSmallMedium: AppTextStyle.bodyExtraSmallBodyExtraSmallMedium
            .copyWith(color: AppColors.brandTextColor),
      );

  final TextStyle? h1;
  final TextStyle? h2;
  final TextStyle? h3;
  final TextStyle? h4;
  final TextStyle? h5;
  final TextStyle? h6;
  final TextStyle? bodyLargeRegular;
  final TextStyle? bodyLargeMedium;
  final TextStyle? bodyLargeSemibold;
  final TextStyle? bodyLargeBold;
  final TextStyle? bodyMediumRegular;
  final TextStyle? bodyMediumMedium;
  
  final TextStyle? bodyMediumSemibold;
  final TextStyle? bodySmallRegular;
  final TextStyle? bodySmallMedium;
  final TextStyle? bodyExtraSmallRegular;
  final TextStyle? bodyExtraSmallMedium;

  @override
  ThemeExtension<AppTextTheme> copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? h6,
    TextStyle? bodyLargeRegular,
    TextStyle? bodyLargeMedium,
    TextStyle? bodyLargeSemibold,
    TextStyle? bodyLargeBold,
    TextStyle? bodyMediumRegular,
    TextStyle? bodyMediumMedium,
    TextStyle? bodyMediumSemibold,
    TextStyle? bodySmallRegular,
    TextStyle? bodySmallMedium,
    TextStyle? bodyExtraSmallRegular,
    TextStyle? bodyExtraSmallMedium,
  }) {
    return AppTextTheme(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      h6: h6 ?? this.h6,
      bodyLargeRegular: bodyLargeRegular ?? this.bodyLargeRegular,
      bodyLargeMedium: bodyLargeMedium ?? this.bodyLargeMedium,
      bodyLargeSemibold: bodyLargeSemibold ?? this.bodyLargeSemibold,
      bodyLargeBold: bodyLargeBold ?? this.bodyLargeBold,
      bodyMediumRegular: bodyMediumRegular ?? this.bodyMediumRegular,
      bodyMediumMedium: bodyMediumMedium ?? this.bodyMediumMedium,
      bodyMediumSemibold: bodyMediumSemibold ?? this.bodyMediumSemibold,
      bodySmallRegular: bodySmallRegular ?? this.bodySmallRegular,
      bodySmallMedium: bodySmallMedium ?? this.bodySmallMedium,
      bodyExtraSmallRegular:
          bodyExtraSmallRegular ?? this.bodyExtraSmallRegular,
      bodyExtraSmallMedium: bodyExtraSmallMedium ?? this.bodyExtraSmallMedium,
    );
  }

  @override
  ThemeExtension<AppTextTheme> lerp(
    covariant ThemeExtension<AppTextTheme>? other,
    double t,
  ) {
    if (other is! AppTextTheme) return this;
    return AppTextTheme(
      h1: TextStyle.lerp(h1, other.h1, t),
      h2: TextStyle.lerp(h2, other.h2, t),
      h3: TextStyle.lerp(h3, other.h3, t),
      h4: TextStyle.lerp(h4, other.h4, t),
      h5: TextStyle.lerp(h5, other.h5, t),
      h6: TextStyle.lerp(h6, other.h6, t),
      bodyLargeRegular: TextStyle.lerp(
        bodyLargeRegular,
        other.bodyLargeRegular,
        t,
      ),
      bodyLargeMedium: TextStyle.lerp(
        bodyLargeMedium,
        other.bodyLargeMedium,
        t,
      ),
      bodyLargeSemibold: TextStyle.lerp(
        bodyLargeSemibold,
        other.bodyLargeSemibold,
        t,
      ),
      bodyLargeBold: TextStyle.lerp(bodyLargeBold, other.bodyLargeBold, t),
      bodyMediumRegular: TextStyle.lerp(
        bodyMediumRegular,
        other.bodyMediumRegular,
        t,
      ),
      bodyMediumMedium: TextStyle.lerp(
        bodyMediumMedium,
        other.bodyMediumMedium,
        t,
      ),
      bodyMediumSemibold: TextStyle.lerp(
        bodyMediumSemibold,
        other.bodyMediumSemibold,
        t,
      ),
      bodySmallRegular: TextStyle.lerp(
        bodySmallRegular,
        other.bodySmallRegular,
        t,
      ),
      bodySmallMedium: TextStyle.lerp(
        bodySmallMedium,
        other.bodySmallMedium,
        t,
      ),
      bodyExtraSmallRegular: TextStyle.lerp(
        bodyExtraSmallRegular,
        other.bodyExtraSmallRegular,
        t,
      ),
      bodyExtraSmallMedium: TextStyle.lerp(
        bodyExtraSmallMedium,
        other.bodyExtraSmallMedium,
        t,
      ),
    );
  }
}

abstract class AppTextStyle {
  static const TextStyle cartoonTitle = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.brandPrimary,
  );

  static const TextStyle cartoonSubtitle = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static const TextStyle cartoonBody = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.pureWhite,
  );

  static const TextStyle cartoonSmall = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.brandPrimary,
  );

  static const TextStyle cartoonExtraSmall = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.brandPrimary,
  );

  // Inter font stilleri
  static const TextStyle headingHeadingH1 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 60,
    height: 1.5,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle headingHeadingH2 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 48,
    height: 1.5,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle headingHeadingH3 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 40,
    height: 1.5,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle headingHeadingH4 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 30,
    height: 1.5,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle headingHeadingH5 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 28,
    height: 1.5,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle headingHeadingH6 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    height: 1.5,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle bodyLargeBodyLargeRegular = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyLargeBodyLargeMedium = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyLargeBodyLargeSemibold = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle bodyLargeBodyLargeBold = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle bodyMediumBodyMediumRegular = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyMediumBodyMediumMedium = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyMediumBodyMediumSemibold = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle bodySmallBodySmallRegular = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodySmallBodySmallMedium = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyExtraSmallBodyExtraSmallRegular = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 12,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyExtraSmallBodyExtraSmallMedium = TextStyle(
    fontFamily: 'cartoon',
    fontSize: 12,
    height: 1.5,
    fontWeight: FontWeight.w500,
  );
}
