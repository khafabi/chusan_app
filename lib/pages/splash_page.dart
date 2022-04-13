import 'dart:async';
import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // Timer(
    //   const Duration(seconds: 2),
    //       () {
    //     // User? user = FirebaseAuth.instance.currentUser;
    //
    //     if (user == null) {
    //       Navigator.pushNamedAndRemoveUntil(context, '/auth', (route) => false);
    //     } else {
    //       // context.read<AuthCubit>().getCurrentUser(user.uid);
    //       Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    //     }
    //   },
    // );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryBrand,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_splash.png',
                  ),
                ),
              ),
            ),
            Text(
              'Chusan.id',
              style: AppFonts.title(color: Colors.white),
            ),
            Text(
              'Cari Cafe? Cek Chusan.id',
              style: AppFonts.subtitle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
