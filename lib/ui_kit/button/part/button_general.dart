// ignore_for_file: prefer_initializing_formals

part of '../button.dart';

class _BtnText extends StatelessWidget {
  const _BtnText({required this.title, required this.disabled, required this.onPressed, this.color, this.textStyle});

  final String title;
  final VoidCallback? onPressed;
  final bool disabled;
  final Color? color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: disabled ? (){}: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: AppRadius.button()),
        ),
        child: Text(title, 
        style: disabled ? context.text.bodyMediumMedium: 
        textStyle ?? context.text.bodyMediumMedium?.copyWith(color: color ?? AppColors.brandColor0355)));
  }
}


class _BtnOutlined extends StatelessWidget {
  const _BtnOutlined({required this.title, required this.onPressed, this.enabled = true});

  final String title;
  final VoidCallback onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.brandSecondary, width: 2),
        ),
        onPressed: enabled ? onPressed: (){},
        child: Text(title, style: context.text.bodyMediumMedium));
  }
}

class _BtnOutlinedGradient extends StatelessWidget {
  const _BtnOutlinedGradient({required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return _OutlinedGradientButton(
      strokeWidth: 2,
      radius: 100,
      gradient:
          const LinearGradient(colors: [Color(0xff0035BC), Color(0xff00A3FF)]),
      onPressed: onPressed,
      child: Text(title, style: context.text.bodyMediumMedium),
    );
  }
}

class _OutlinedGradientButton extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;
  final VoidCallback _callback;
  final double _radius;

  _OutlinedGradientButton({
    required double strokeWidth,
    required double radius,
    required Gradient gradient,
    required Widget child,
    required VoidCallback onPressed,
  })  : _painter = _GradientPainter(
            strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        _child = child,
        _callback = onPressed,
        _radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _callback,
        child: InkWell(
          highlightColor: AppColors.brandPrimary,
          borderRadius: BorderRadius.circular(_radius),
          onTap: _callback,
          child: Container(
            constraints: const BoxConstraints(minWidth: 88, minHeight: 48),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_child],
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter(
      {required double strokeWidth,
      required double radius,
      required Gradient gradient})
      : strokeWidth = strokeWidth,
        radius = radius,
        gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}



class _BtnGradient extends StatelessWidget {
  const _BtnGradient(
      {required this.title,
      this.onPressed,
      this.enabled = true,
      this.color,
      this.onPressedDisabled,
      this.leading});

  final String title;   
  final VoidCallback? onPressed;
  final bool enabled;
  final List<Color>? color;
  final VoidCallback? onPressedDisabled;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(title, style: context.text.bodyMediumMedium);
    final buttonChild = leading == null
        ? textWidget
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconTheme.merge(
                data: const IconThemeData(color: Colors.white),
                child: leading!,
              ),
              const SizedBox(width: 8),
              textWidget
            ],
          );
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppRadius.button(),
        gradient: (color != null) ? LinearGradient(colors: color!):
        (enabled ?
        const LinearGradient(colors: [Color(0xff0035BC), Color(0xff00A3FF)]):
        const LinearGradient(colors: [Color(0xff4a4b56), Color(0xff888f95)]))
      ),
      child: ElevatedButton(
        onPressed: enabled ? onPressed: onPressedDisabled,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: AppRadius.button())),
        child: buttonChild,
      ),
    );
  }
}


class _BtnRegular extends StatelessWidget {

 const _BtnRegular({
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.color,
    this.cornerRadius,
    this.borderColor,
    this.textIcon,
    this.paddingIcon});


  final String title;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? color;
  final double? cornerRadius;
  final Widget? textIcon;
  final double? paddingIcon;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(title, style: context.text.bodyMediumMedium);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(cornerRadius ?? 0), side: BorderSide(color: borderColor ?? Colors.transparent))),
      child: Align(
        alignment: Alignment.center,
        child: textIcon != null ? Row( mainAxisAlignment: MainAxisAlignment.center, children: [textIcon!, paddingIcon != null ? SizedBox(width: paddingIcon!): const Gap.m(), textWidget]) : textWidget,
      )
    );
  }
}