import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';


class ChusanPasswordForm extends StatefulWidget {
  const ChusanPasswordForm({
    Key? key,
    required this.title,
    required this.textController,
    required this.hintText,
    this.validatorFunction,
  }) : super(key: key);

  final String title;
  final TextEditingController textController;
  final String hintText;
  final String? Function(String?)? validatorFunction;

  @override
  State<ChusanPasswordForm> createState() => _ChusanPasswordFormState();
}

class _ChusanPasswordFormState extends State<ChusanPasswordForm> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.title,
            style: AppFonts.verySmall(
                    fontWeight: FontWeight.bold,
                  )
                ,
          ),
        ),
        Container(
          height: const Size.fromHeight(45).height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConst.neutral20,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  obscureText: !_passwordVisible,
                  controller: widget.textController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    contentPadding: const EdgeInsets.only(
                      left: 15,
                    ),
                    hintStyle: AppFonts.verySmall(
                            fontWeight: FontWeight.bold,
                          ),
                  ),
                  validator: widget.validatorFunction,
                ),
              ),
              IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: setVisibility,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void setVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }
}
