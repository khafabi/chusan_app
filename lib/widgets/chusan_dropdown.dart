import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';

class ChusanDropdown<T extends Object> extends StatelessWidget {
  const ChusanDropdown(
      {Key? key,
      required this.title,
      required this.textDropdownValue,
      required this.hintText,
      required this.items,
      required this.validatorFunction,
      required this.onChanged})
      : super(key: key);

  final String title;
  final T? textDropdownValue;
  final String hintText;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validatorFunction;
  final List<DropdownMenuItem<T>> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: AppFonts.verySmall(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: const Size.fromHeight(50).height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConst.neutral20,
          ),
          child: DropdownButtonFormField<T>(
            hint: Text(
              hintText,
              style: AppFonts.verySmall(),
            ),
            isExpanded: true,
            value: textDropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 16,
            onChanged: onChanged,
            validator: validatorFunction,
            items: items,
            decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 15),
            ),
          ),
        ),
      ],
    );
  }
}
