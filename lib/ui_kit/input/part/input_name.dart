part of '../input.dart';

class _InputName extends StatelessWidget {
  final ValueSetter<String>? onChanged;
  final String? initialValue;

  const _InputName({
    this.initialValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return _Input(
      initialValue: initialValue,
      decoration: const InputDecoration(
        hintText: 'Name Surname',
      ),
      keyboardType: TextInputType.name,
      onChanged: onChanged,
    );
  }
}
