import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rickandmortyapp/l10n/app_localizations.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'package:rickandmortyapp/ui_kit/theme/typography.dart';

extension ContextExt on BuildContext {
  /// Pushes a new route onto the navigator stack.
  Future<T?> push<T extends Object?>(String page) {
    return Navigator.pushNamed<T>(this, page);
  }

  /// Pushes a new route onto the navigator that replaces the current route,
  /// and then removes all the previous routes until the [predicate] returns true.
  Future<T?> pushRemoveUntil<T extends Object?>(
    String page,
    RoutePredicate predicate,
  ) {
    return Navigator.pushNamedAndRemoveUntil<T>(this, page, predicate);
  }

  /// Pushes a new route onto the navigator that replaces the current route,
  /// and then removes all the previous routes until the [route] is reached.
  Future<T?> pushReplacementUntil<T extends Object?>(
    String page,
    Route<T> route,
  ) {
    return Navigator.pushReplacement<T, T>(this, route);
  }

  /// Pushes a new route onto the navigator that replaces the current route,
  /// and then removes all the previous routes.
  Future<T?> pushReplacementAll<T extends Object?>(String page) {
    return Navigator.pushNamedAndRemoveUntil<T>(this, page, (route) => false);
  }

  /// Removes the current route from the navigator
  void pop<T extends Object?>([T? result]) {
    return Navigator.pop<T>(this, result);
  }

  /// Returns the [ThemeData] associated with the current [BuildContext].
  ThemeData get theme => Theme.of(this);

  /// Returns the [AppTextTheme] defined in the current [ThemeData].
  AppTextTheme get text => Theme.of(this).extension<AppTextTheme>()!;

  /// Returns the [AppColorsExt] associated with the current [BuildContext].
  AppColorsExt get color => AppColorsExt(this);

  /// Returns the [ColorScheme] defined in the current [ThemeData].
  ColorScheme get colorScheme => theme.colorScheme;

  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  /// Returns the [MediaQueryData] associated with the current [BuildContext].
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Returns the [Navigator] associated with the current [BuildContext].
  NavigatorState get navigator => Navigator.of(this);

  /// Returns the [FocusScopeNode] associated with the current [BuildContext].
  FocusScopeNode get focusScope => FocusScope.of(this);

  /// Returns the [ScaffoldState] associated with the current [BuildContext].
  ScaffoldState get scaffold => Scaffold.of(this);

  /// Returns the [ScaffoldMessengerState]
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  /// Returns the height of the current widget's [MediaQuery].
  double get height => mediaSize.height;

  /// Returns the width of the current widget's [MediaQuery].
  double get width => mediaSize.width;

  /// Calculates and returns a dynamic width value
  double dynamicWidth(double val) => width * val;

  /// Calculates and returns a dynamic height value
  double dynamicHeight(double val) => height * val;

  /// Returns the [Size] associated with the current [BuildContext].
  Size get mediaSize => MediaQuery.sizeOf(this);

  /// Returns the [Size] associated with the current [BuildContext].
  EdgeInsets get mediaViewInset => MediaQuery.viewInsetsOf(this);

  /// Returns the [Brightness] associated with the current [BuildContext].
  Brightness get mediaBrightness => MediaQuery.platformBrightnessOf(this);

  /// Returns the primary [TextTheme] defined in the current [ThemeData].
  TextTheme get primaryTextTheme => theme.primaryTextTheme;

  /// Returns a random [MaterialColor]
  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];

  /// Returns whether the software keyboard is open
  bool get isKeyBoardOpen => mediaViewInset.bottom > 0;

  /// Returns the height of the software keyboard
  double get keyboardPadding => mediaViewInset.bottom;

  /// Returns the [AppLocalizations] for localization
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
