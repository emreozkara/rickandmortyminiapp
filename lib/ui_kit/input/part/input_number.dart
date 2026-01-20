part of '../input.dart';

class _InputNumber extends StatelessWidget {
  final ValueSetter<String>? onChanged;
  final String? hintText;
  final String? initialValue;
  final bool? maskEnabled;
  final TextEditingController? controller;
  final MaskTextInputFormatter? format;
  final Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  const _InputNumber({
    this.initialValue,
    this.hintText,
    this.controller,
    this.maskEnabled,
    required this.onChanged,
    this.format,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode
  });

  @override
  Widget build(BuildContext context) {
    return maskEnabled == true ? _Input(
      controller: controller,
      initialValue: initialValue,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      keyboardType: TextInputType.number,
      inputFormatters: format == null ? <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ]: [FilteringTextInputFormatter.digitsOnly, format!],
      onChanged: onChanged,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
      obscureText: true,
      maxLines: 1,
    ): _Input(
      controller: controller,
      initialValue: initialValue,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      keyboardType: TextInputType.number,
      inputFormatters: format == null ? <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ]: [FilteringTextInputFormatter.digitsOnly, format!],
      onChanged: onChanged,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode
    );
  }
}
