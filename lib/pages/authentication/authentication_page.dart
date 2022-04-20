import 'package:chusan_app/pages/authentication/widget/login.dart';
import 'package:chusan_app/pages/authentication/widget/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AuthenticationPage extends StatefulWidget {
  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  bool _isLoginForm = true;

  /// LOGIN Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  /// SIGN UP Controllers
  /// Controllers
  final _fullNameController = TextEditingController();
  final _signUpEmailController = TextEditingController();
  final _signUpPasswordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  String? _tingkatanDropdownValue;
  String? _sekolahDropdownValue;

  @override
  void initState() {
    _isLoginForm = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.width / 1.3),
                Visibility(
                  visible: _isLoginForm,
                  child: LoginWidget(
                    emailController: _emailController,
                    passwordController: _passwordController,
                  ),
                ),
                Visibility(
                  visible: !_isLoginForm,
                  child: RegistrationWidget(
                    fullNameController: _fullNameController,
                    emailController: _signUpEmailController,
                    passwordController: _signUpPasswordController,
                    passwordConfirmationController:
                        _passwordConfirmationController,
                    sekolahDropdownValue: _sekolahDropdownValue,
                    tingkatanDropdownValue: _tingkatanDropdownValue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  // visible: _appController.isLoginWidgetDisplayed.value,
                  visible: _isLoginForm,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isLoginForm = !_isLoginForm;
                      });
                    },
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Don\'t have an account?",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: " Create account!",
                            style: TextStyle(color: Colors.blue)),
                      ]),
                    ),
                  ),
                ),
                Visibility(
                  // visible: !_appController.isLoginWidgetDisplayed.value,
                  visible: !_isLoginForm,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isLoginForm = !_isLoginForm;
                      });
                    },
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: " Sign in!!",
                            style: TextStyle(color: Colors.blue)),
                      ]),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
