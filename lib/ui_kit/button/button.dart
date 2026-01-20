import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickandmortyapp/core/extension/context_ext.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_padding.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_radius.dart';
import 'package:rickandmortyapp/ui_kit/theme/gap.dart';
part 'part/button_dropdown.dart';
part 'part/button_general.dart';
part 'part/button_icon.dart';
part 'part/button_range.dart';
part 'part/button_square.dart';

class Button extends StatelessWidget {
  const Button._(this.button);

  factory Button.gradient({
    required String title,
    required VoidCallback? onPressed,
    VoidCallback? onPressedDisabled,
    bool enabled = true,
    List<Color>? color,
    Widget? leading,
  }) => Button._(
    _BtnGradient(
      title: title,
      onPressed: onPressed,
      enabled: enabled,
      color: color,
      onPressedDisabled: onPressedDisabled,
      leading: leading,
    ),
  );

  factory Button.range() => const Button._(_ToggleButton());

  factory Button.text({
    required String title,
    bool disabled = false,
    required VoidCallback? onPressed,
    Color? color,
    TextStyle? textStyle,
  }) => Button._(
    _BtnText(
      title: title,
      disabled: disabled,
      onPressed: onPressed,
      color: color,
      textStyle: textStyle,
    ),
  );

  factory Button.regular({
    required String title,
    required VoidCallback onPressed,
    Color? backgroundColor,
    Color? color,
    double? cornerRadius = 0,
    Widget? textIcon,
    double? paddingIcon = 8,
    Color? borderColor,
  }) => Button._(
    _BtnRegular(
      title: title,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      color: color,
      cornerRadius: cornerRadius,
      textIcon: textIcon,
      paddingIcon: paddingIcon,
      borderColor: borderColor,
    ),
  );

  factory Button.outlined({
    required String title,
    required VoidCallback onPressed,
    bool enabled = true,
  }) => Button._(
    _BtnOutlined(title: title, onPressed: onPressed, enabled: enabled),
  );

  factory Button.outlinedGradient({
    required String title,
    required VoidCallback onPressed,
  }) => Button._(_BtnOutlinedGradient(title: title, onPressed: onPressed));

  factory Button.iconBack({VoidCallback? onPressed, bool isCircle = false}) =>
      Button._(
        _BtnIcon(
          onPressed: onPressed,
          icon: isCircle
              ? CupertinoIcons.arrow_left_circle_fill
              : CupertinoIcons.arrow_left,
        ),
      );
  factory Button.iconClose({VoidCallback? onPressed, bool isCircle = false}) =>
      Button._(
        _BtnIcon(
          onPressed: onPressed,
          icon: isCircle
              ? CupertinoIcons.xmark_circle_fill
              : CupertinoIcons.xmark,
        ),
      );

  factory Button.icon({
    required IconData icon,
    VoidCallback? onPressed,
    Color? iconColor,
    double? iconSize,
    Color? backgroundColor,
    bool showContainer = false,
    double? containerPadding,
    Color? boxShadowColor,
  }) => Button._(
    _BtnIcon(
      onPressed: onPressed,
      icon: icon,
      iconColor: iconColor,
      iconSize: iconSize,
      backgroundColor: backgroundColor,
      showContainer: showContainer,
      containerPadding: containerPadding,
      boxShadowColor: boxShadowColor,
    ),
  );

  //code for the dropdown button
  factory Button.dropdown({
    required List<String> items,
    required ValueChanged<String> onChanged,
    String? value,
  }) => Button._(
    _BtnDropdown(
      items: items,
      onChanged: onChanged,
      value: value ?? items.first,
    ),
  );

  factory Button.square({
    required String title,
    required IconData icon,
    required VoidCallback? onPressed,
    Color color = Colors.greenAccent,
    double? iconSize,
  }) => Button._(
    _ButtonSquare(
      title: title,
      icon: icon,
      onPressed: onPressed,
      color: color,
      iconSize: iconSize,
    ),
  );

  final Widget button;

  @override
  Widget build(BuildContext context) => button;
}

extension ButtonModifier on Widget {
  Widget fullWidth() => SizedBox(width: double.infinity, child: this);
  Widget expanded() => Expanded(child: this);
  Widget horMargin() => Padding(padding: AppPadding.symmetricHor, child: this);
}
