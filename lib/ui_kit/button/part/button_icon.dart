part of '../button.dart';

class _BtnIcon extends StatelessWidget {
  const _BtnIcon({
    this.onPressed,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.backgroundColor,
    this.showContainer = false,
    this.containerPadding,
    this.boxShadowColor,
  });

  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final Color? backgroundColor;
  final bool showContainer;
  final double? containerPadding;
  final Color? boxShadowColor;

  @override
  Widget build(BuildContext context) {
    final iconWidget = Icon(
      icon,
      color: iconColor ?? AppColors.brandSecondary,
      size: iconSize ?? 36,
    );

    final child = showContainer
        ? Container(
            padding: EdgeInsets.all(containerPadding ?? 12),
            decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.primary,
              shape: BoxShape.circle,
              boxShadow: boxShadowColor != null
                  ? [
                      BoxShadow(
                        color: boxShadowColor!,
                        blurRadius: 15,
                        spreadRadius: 2,
                      ),
                    ]
                  : null,
            ),
            child: iconWidget,
          )
        : iconWidget;

    return CupertinoButton(
      onPressed: onPressed ?? () => context.pop(),
      padding: EdgeInsets.zero,
      child: child,
    );
  }
}
