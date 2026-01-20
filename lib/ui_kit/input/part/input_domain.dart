part of '../input.dart';

class _InputDomain extends StatelessWidget {
  const _InputDomain();

  @override
  Widget build(BuildContext context) {
    return _Input(
      decoration: const InputDecoration(
        labelText: 'Domain',
        hintText: 'Enter your domain',
        prefixIcon: Icon(CupertinoIcons.tag),
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      inputFormatters: [LengthLimitingTextInputFormatter(40)],
    );
  }
}
