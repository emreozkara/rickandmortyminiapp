part of '../input.dart';

class _InputNote extends StatelessWidget {
  final String? labelText;
  final String hintText;
  final ValueSetter<String>? onChanged;
  final TextEditingController? controller;

  const _InputNote({
    required this.hintText,
    required this.onChanged,
    this.labelText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return _Input(
      minLines: 4,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
      ),
      keyboardType: TextInputType.multiline,
      onChanged: onChanged,
      controller: controller,
    );
  }
}
