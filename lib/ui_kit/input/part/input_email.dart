part of '../input.dart';

class _InputEmail extends StatelessWidget {
  final ValueSetter<String>? _onChanged;

  const _InputEmail({
    required ValueSetter<String>? onChanged,
  }) : _onChanged = onChanged;

  @override
  Widget build(BuildContext context) {
    return _Input(
      decoration: const InputDecoration(
        hintText: 'Email',
      ),
      keyboardType: TextInputType.emailAddress,
      onChanged: _onChanged,
    );
  }
}
