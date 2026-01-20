// ignore_for_file: prefer_initializing_formals

part of '../input.dart';

class _InputText extends StatelessWidget {
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? labelText;
  final String hintText;
  final ValueSetter<String>? onChanged;
  final String? initialValue;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? maskEnabled;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final bool? autofocus;
  final TextInputType? keyboardType;
  final Color? borderColor;
  final double? borderRadius;
  final int? maxLength;
  final Color? backgroundColor;
  final Color? textColor;
  final bool showClearButton;
  final VoidCallback? onClear;
  const _InputText({
    required this.hintText,
    required this.onChanged,
    required this.textColor,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    this.initialValue,
    this.controller,
    this.focusNode,
    this.maskEnabled,
    this.textInputAction,
    this.onFieldSubmitted,
    this.autofocus,
    this.keyboardType,
    this.borderColor,
    this.borderRadius,
    this.maxLength,
    this.backgroundColor,
    this.showClearButton = false,
    this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(borderRadius ?? 6);
    final border = OutlineInputBorder(
      borderRadius: radius,
      borderSide: BorderSide(color: borderColor ?? AppColors.brandSecondary),
    );

    Widget? buildSuffixIcon() {
      if (showClearButton &&
          controller != null &&
          controller!.text.isNotEmpty) {
        return IconButton(
          icon: Icon(Icons.clear, color: textColor?.withValues(alpha: 0.5)),
          onPressed: () {
            controller?.clear();
            onClear?.call();
            onChanged?.call('');
          },
        );
      }
      if (suffixIcon != null) {
        return Icon(suffixIcon);
      }
      return null;
    }

    return maskEnabled == true
        ? _Input(
            initialValue: initialValue,
            textStyle: AppTextStyle.bodyMediumBodyMediumMedium.copyWith(
              color: textColor ?? AppColors.black,
            ),
            decoration: InputDecoration(
              fillColor: backgroundColor ?? Colors.white,
              filled: backgroundColor != null ? true : false,
              labelText: labelText,
              hintText: hintText,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIcon: buildSuffixIcon(),
              enabledBorder: border,
              focusedBorder: border,
              border: border,
            ),
            keyboardType: keyboardType ?? TextInputType.text,
            onChanged: onChanged,
            controller: controller,
            focusNode: focusNode,
            textInputAction: textInputAction,
            onFieldSubmitted: onFieldSubmitted,
            obscureText: true,
            maxLines: 1,
            autofocus: autofocus ?? false,
          )
        : _Input(
            initialValue: initialValue,
            textStyle: AppTextStyle.bodyMediumBodyMediumMedium.copyWith(
              color: textColor ?? AppColors.black,
            ),
            decoration: InputDecoration(
              fillColor: backgroundColor ?? Colors.white,
              filled: backgroundColor != null ? true : false,
              labelText: labelText,
              hintText: hintText,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIcon: buildSuffixIcon(),
              enabledBorder: border,
              focusedBorder: border,
              border: border,
            ),
            keyboardType: keyboardType ?? TextInputType.text,
            onChanged: onChanged,
            controller: controller,
            focusNode: focusNode,
            textInputAction: textInputAction,
            onFieldSubmitted: onFieldSubmitted,
            autofocus: autofocus ?? false,
          );
  }
}
