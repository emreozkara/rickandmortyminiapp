import 'package:flutter/cupertino.dart';

abstract class AppColors {
  static const Color brandPrimary = Color(0xFFFAA21E);
  static const Color brandPrimaryLight = Color.fromRGBO(255, 211, 130, 1);

  static const Color brandSecondary = Color(0xff8d94b0);

  static const Color brandStrokeColor = Color(0xff2f3959);

  static const Color brandTextColor = Color(0xffffffff);

  static const Color brandColor04 = Color(0xff20273d);

  static const Color brandColor03 = Color(0xff2f3959);

  static const Color brandColor05 = Color(0xff0078ff);

  static const Color brandColor0355 = Color(0x8c2f3959);

  static const Color brandColor0265 = Color(0xa6252e47);

  static const Color statusStatusRed = Color(0xffe02d3c);

  static const Color statusStatusRed50 = Color(0x80e02d3c);

  static const Color statusGreen = Color(0xff5fb53a);

  static const Color statusGreen50 = Color(0x805fb53a);

  static const Color statusRed50 = Color(0x80e02d3c);

  static const Color statusYellow = Color(0xffffa319);

  static const Color statusYellow50 = Color(0x80ffa319);

  static const Color backgroundColor = Color(0xFFF2F2F2);

  static const Color darkGray = Color(0xFF1C1F2E);
  static const Color lightGray = Color(0xFF8E94AB);

  static const List<Color> gradientBodyBgGradient = <Color>[
    Color(0xff212940),
    Color(0xff141724),
  ];

  static const List<Color> gradientAppIconBgGradient = <Color>[
    Color(0xff28314d),
    Color(0xff141723),
  ];

  static const List<Color> gradientChartFillGradient = <Color>[
    Color(0xff38456b),
    Color(0x1a333e61),
  ];

  static const List<Color> gradientDashboardWalletBgGradient = <Color>[
    Color(0xff00a3ff),
    Color(0xff0035bc),
  ];

  static const List<Color> gradientButtonGradient = <Color>[
    Color(0xff0035bc),
    Color(0xff00a3ff),
  ];

  static const List<Color> gradientIconGradient = <Color>[
    Color(0xff003edd),
    Color(0xff0094ff),
  ];

  static const Color whiteBlackWhite = Color(0xffffffff);

  static const Color whiteBlackWhite1 = Color(0x00ffffff);

  static const Color whiteBlackWhite5 = Color(0x0dffffff);

  static const Color whiteBlackWhite45 = Color(0x73ffffff);

  static const Color whiteBlackBlack = Color(0xff000000);
  static const Color pureWhite = Color(0xffffffff);
  static const Color pureBlack = Color(0xff000000);
  static const Color transparent = Color(0x00000000);

  static const Color cuperBlue = CupertinoColors.systemBlue;
  static const Color cuperRed = CupertinoColors.systemRed;
  static const Color cuperGreen = CupertinoColors.systemGreen;
  static const Color cuperYellow = CupertinoColors.systemYellow;
  static const Color cuperOrange = CupertinoColors.systemOrange;
  static const Color cuperGrey = CupertinoColors.systemGrey;

  static const Color primary = Color(0xFF97CE4C);
  static const Color secondary = Color(0xFF44B3C2);
  static const Color tertiary = Color(0xFFF0E14A);
  static const Color background = Color(0xFF1C1F2E);
  static const Color surface = Color(0xFF2D3142);
  static const Color surfaceVariant = Color(0xFF3D4255);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF8E94AB);

  static const Color alive = Color(0xFF5FB53A);
  static const Color dead = Color(0xFFE02D3C);
  static const Color unknown = Color(0xFF8E94AB);
}

final class AppColorsExt {
  AppColorsExt(BuildContext context);

  Color get brandPrimary => AppColors.brandPrimary;
  Color get brandPrimaryLight => AppColors.brandPrimaryLight;
  Color get brandSecondary => AppColors.brandSecondary;
  Color get brandStrokeColor => AppColors.brandStrokeColor;
  Color get brandTextColor => AppColors.brandTextColor;
  Color get brandColor04 => AppColors.brandColor04;
  Color get brandColor03 => AppColors.brandColor03;
  Color get brandColor05 => AppColors.brandColor05;
  Color get brandColor0355 => AppColors.brandColor0355;
  Color get brandColor0265 => AppColors.brandColor0265;
  Color get statusStatusRed => AppColors.statusStatusRed;
  Color get statusStatusRed50 => AppColors.statusStatusRed50;
  Color get statusGreen => AppColors.statusGreen;
  Color get statusGreen50 => AppColors.statusGreen50;
  Color get statusRed50 => AppColors.statusRed50;
  Color get statusYellow => AppColors.statusYellow;
  Color get statusYellow50 => AppColors.statusYellow50;
  List<Color> get gradientBodyBgGradient => AppColors.gradientBodyBgGradient;
  List<Color> get gradientAppIconBgGradient =>
      AppColors.gradientAppIconBgGradient;
  List<Color> get gradientChartFillGradient =>
      AppColors.gradientChartFillGradient;
  List<Color> get gradientDashboardWalletBgGradient =>
      AppColors.gradientDashboardWalletBgGradient;
  List<Color> get gradientButtonGradient => AppColors.gradientButtonGradient;
  List<Color> get gradientIconGradient => AppColors.gradientIconGradient;
  Color get whiteBlackWhite => AppColors.whiteBlackWhite;
  Color get whiteBlackWhite1 => AppColors.whiteBlackWhite1;
  Color get whiteBlackWhite5 => AppColors.whiteBlackWhite5;
  Color get whiteBlackWhite45 => AppColors.whiteBlackWhite45;
  Color get whiteBlackBlack => AppColors.whiteBlackBlack;
  Color get pureWhite => AppColors.pureWhite;
  Color get pureBlack => AppColors.pureBlack;
  Color get transparent => AppColors.transparent;
  Color get cuperBlue => AppColors.cuperBlue;
  Color get cuperRed => AppColors.cuperRed;
  Color get cuperGreen => AppColors.cuperGreen;
  Color get cuperYellow => AppColors.cuperYellow;
  Color get cuperOrange => AppColors.cuperOrange;
  Color get cuperGrey => AppColors.cuperGrey;

  Color get primary => AppColors.primary;
  Color get secondary => AppColors.secondary;
  Color get tertiary => AppColors.tertiary;
  Color get background => AppColors.background;
  Color get surface => AppColors.surface;
  Color get surfaceVariant => AppColors.surfaceVariant;
  Color get white => AppColors.white;
  Color get black => AppColors.black;
  Color get textSecondary => AppColors.textSecondary;

  Color get alive => AppColors.alive;
  Color get dead => AppColors.dead;
  Color get unknown => AppColors.unknown;
}
