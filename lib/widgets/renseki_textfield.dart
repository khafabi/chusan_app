import 'package:flutter/material.dart';

class RensekiTextForm extends StatelessWidget {
  const RensekiTextForm({
    Key? key,
    required this.title,
    required TextEditingController textController,
    required this.hintText,
    this.validatorFunction,
    this.keyboardType,
  })  : textController = textController,
        super(key: key);

  final String title;
  final TextEditingController textController;
  final String hintText;
  final String? Function(String?)? validatorFunction;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: (ScreenLayout().isMobile)
                ? AppFonts.verySmall(
                    fontWeight: FontWeight.bold,
                    color: ColorConst.black1Color,
                  )
                : AppFonts.standard(
                    fontWeight: FontWeight.bold,
                    color: ColorConst.black1Color,
                  ),
          ),
        ),
        Container(
          height: const Size.fromHeight(50).height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConst.neutral20WhiteColor,
          ),
          child: TextFormField(
            controller: textController,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 15),
              hintText: hintText,
              hintStyle: (ScreenLayout().isMobile)
                  ? AppFonts.verySmall(
                      // fontWeight: FontWeight.bold,
                      color: ColorConst.black1Color,
                    )
                  : AppFonts.standard(
                      color: ColorConst.black1Color,
                    ),
            ),
            validator: validatorFunction,
          ),
        ),
      ],
    );
  }
}
