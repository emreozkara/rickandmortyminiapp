part of '../button.dart';

class _ToggleButton extends StatefulWidget {
  const _ToggleButton();

  @override
  State<_ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<_ToggleButton> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilledButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.disabled)) {
                      return AppColors.brandColor0265;
                    }
                    return _selectedIndex == 0
                        ? AppColors.cuperBlue
                        : AppColors.brandColor0265;
                  },
                ),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(4),
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(4),
                    ),
                  ),
                ),
              ),
              child: const Text('Start'),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: FilledButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.disabled)) {
                      return AppColors.brandColor0265;
                    }
                    return _selectedIndex == 1
                        ? AppColors.cuperBlue
                        : AppColors.brandColor0265;
                  },
                ),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                ),
              ),
              child: const Text('End'),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
