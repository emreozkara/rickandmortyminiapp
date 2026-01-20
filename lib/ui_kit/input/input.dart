import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'package:rickandmortyapp/ui_kit/theme/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
part 'part/input_domain.dart';
part 'part/input_email.dart';
part 'part/input_name.dart';
part 'part/input_password.dart';
part 'part/input_text.dart';
part 'part/input_number.dart';
part 'part/input_note.dart';

class Input extends StatelessWidget {
  final Widget input;
  const Input._({required this.input});

  factory Input.domain() {
    return const Input._(input: _InputDomain());
  }

  factory Input.text({
    String? initialValue,
    ValueSetter<String>? onChanged,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String? labelText,
    String? hintText,
    TextEditingController? controller,
    FocusNode? focusNode,
    bool? maskEnabled,
    TextInputAction? textInputAction,
    Function(String)? onFieldSubmitted,
    bool? autofocus,
    TextInputType? keyboardType,
    Color? borderColor,
    double? borderRadius,
    Color? backgroundColor,
    int? maxLength,
    required Color textColor,
    bool showClearButton = false,
    VoidCallback? onClear,
  }) {
    return Input._(
      input: _InputText(
        initialValue: initialValue,
        onChanged: onChanged,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        hintText: hintText ?? '',
        controller: controller,
        focusNode: focusNode,
        maskEnabled: maskEnabled,
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        autofocus: autofocus,
        keyboardType: keyboardType,
        borderColor: borderColor,
        borderRadius: borderRadius,
        maxLength: maxLength,
        backgroundColor: backgroundColor,
        textColor: textColor,
        showClearButton: showClearButton,
        onClear: onClear,
      ),
    );
  }
  factory Input.note({
    ValueSetter<String>? onChanged,
    String? labelText,
    String? hintText,
    TextEditingController? controller,
  }) {
    return Input._(
      input: _InputNote(
        onChanged: onChanged,
        labelText: labelText,
        hintText: hintText ?? labelText ?? '',
        controller: controller,
      ),
    );
  }

  factory Input.number({
    String? initialValue,
    String? hintText,
    bool? maskEnabled,
    TextEditingController? controller,
    ValueSetter<String>? onChanged,
    MaskTextInputFormatter? format,
    Function(String)? onFieldSubmitted,
    TextInputAction? textInputAction,
    FocusNode? focusNode,
  }) {
    return Input._(
      input: _InputNumber(
        initialValue: initialValue,
        hintText: hintText,
        maskEnabled: maskEnabled,
        controller: controller,
        onChanged: onChanged,
        format: format,
        onFieldSubmitted: onFieldSubmitted,
        textInputAction: textInputAction,
        focusNode: focusNode,
      ),
    );
  }

  factory Input.email({ValueSetter<String>? onChanged}) {
    return Input._(input: _InputEmail(onChanged: onChanged));
  }

  factory Input.name({String? initialValue, ValueSetter<String>? onChanged}) {
    return Input._(
      input: _InputName(initialValue: initialValue, onChanged: onChanged),
    );
  }

  factory Input.password({ValueSetter<String>? onChanged}) {
    return Input._(input: _InputPassword(onChanged: onChanged));
  }

  @override
  Widget build(BuildContext context) {
    return input;
  }
}

class _Input extends TextFormField {
  _Input({
    super.initialValue,
    InputDecoration decoration = const InputDecoration(),
    super.onChanged,
    super.obscureText,
    super.maxLines = null,
    super.minLines,
    super.keyboardType,
    super.textInputAction,
    super.inputFormatters,
    super.controller,
    super.onFieldSubmitted,
    super.focusNode,
    super.autofocus,
    TextStyle? textStyle,
    int? maxLength,
  }) : super(
         cursorHeight: 16,
         style: textStyle,
         maxLength: maxLength,
         decoration: decoration.copyWith(
           contentPadding:
               decoration.contentPadding ??
               const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
           alignLabelWithHint: true,
           label: decoration.label != null
               ? Padding(
                   padding: const EdgeInsets.only(top: 32),
                   child: decoration.label,
                 )
               : decoration.label,
         ),
         onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
       );
}
