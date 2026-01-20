part of '../button.dart';

class _ButtonSquare extends StatelessWidget {
  const _ButtonSquare({
    this.title,
    this.onPressed,
    this.iconSize,
    required this.icon,
    required this.color,
  });

  final VoidCallback? onPressed;
  final String? title;
  final IconData icon;
  final Color color;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: context.color.brandPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            size: iconSize ?? context.dynamicWidth(.12),
            color: color,
          ),
          FittedBox(
            child: Text(
              title ?? '',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: context.text.bodyLargeSemibold,
            ),
          ),
        ],
      ),
    );
  }
}
