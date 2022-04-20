import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';

class ChusanButton extends StatelessWidget {
  final String text;
  final Color? txtColor;
  final Color? bgColor;
  final Function() onTap;

  const ChusanButton(
      {Key? key,
        required this.text,
        this.txtColor,
        this.bgColor,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: PhysicalModel(
        color: Colors.grey.withOpacity(.4),
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorConst.primaryBrand,
          ),
          child: Container(
            margin: EdgeInsets.all(14),
            alignment: Alignment.center,
            child: Text(
              text,
              style: AppFonts.large(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
