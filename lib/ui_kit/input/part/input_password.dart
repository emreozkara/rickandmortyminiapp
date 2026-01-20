part of '../input.dart';

class _InputPassword extends StatefulWidget {
  const _InputPassword({
    this.onChanged,
  });

  final ValueSetter<String>? onChanged;

  @override
  State<_InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<_InputPassword> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _Input(
      obscureText: _obscureText,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        prefixIcon: const Icon(CupertinoIcons.lock),
        suffixIcon: IconButton(
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: _obscureText
                ? const Icon(CupertinoIcons.eye_slash, key: Key('off'))
                : const Icon(CupertinoIcons.eye, key: Key('on')),
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      inputFormatters: [LengthLimitingTextInputFormatter(40)],
      onChanged: widget.onChanged,
    );
  }
}
