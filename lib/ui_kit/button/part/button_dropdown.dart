// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../button.dart';

class _BtnDropdown extends StatefulWidget {
  const _BtnDropdown({
    required this.items,
    required this.onChanged,
    required this.value,
  });

  final List<String> items;
  final ValueSetter<String>? onChanged;
  final String value;

  @override
  State<_BtnDropdown> createState() => _BtnDropdownState();
}

class _BtnDropdownState extends State<_BtnDropdown> {
  String? dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppRadius.all(),
        color: AppColors.brandPrimary,
      ),
      child: Padding(
        padding: AppPadding.symmetricHor,
        child: DropdownButton(
            value: dropdownValue,
            elevation: 16,
            underline: const SizedBox(),
            dropdownColor: AppColors.brandPrimary,
            style: context.text.bodyLargeRegular?.copyWith(
              color: AppColors.brandSecondary,
            ),
            isExpanded: true,
            icon: const Icon(CupertinoIcons.chevron_down),
            items: widget.items.map<DropdownMenuItem<String>>((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(e),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue!;
                widget.onChanged!(newValue);
              });
            }),
      ),
    );
  }
}
