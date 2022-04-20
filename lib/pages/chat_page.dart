import 'package:chusan_app/pages/authentication/widget/background.dart';
import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.construction,
              size: 80,
              color: ColorConst.primaryBrand,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Coming Soon",
                style: AppFonts.large(),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
