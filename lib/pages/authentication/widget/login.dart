
import 'package:chusan_app/blocs/bloc_barrel.dart';
import 'package:chusan_app/widgets/chusan_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    Key? key,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _emailController = emailController,
        _passwordController = passwordController,
        super(key: key);

  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool _passwordVisible = false;


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 10,
              )
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Wrap(
          children: [
            /// Email
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: TextField(
                      controller: widget._emailController,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "Email"),
                    ),
                  ),
                ),
              ],
            ),
            /// Password
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      controller: widget._passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(_passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        prefixIcon: const Icon(Icons.lock),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please a Enter Password';
                        } else if (value.length < 8) {
                          return 'Password is too short. It must contain at least 8 characters';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),


            Padding(
              padding: const EdgeInsets.all(25),
              child: BlocConsumer<AuthCubit, AuthState>(
                listener: (BuildContext context, state) {
                  if (state is AuthSuccess) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  } else if (state is AuthFailed) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(state.error),
                      ),
                    );
                  }
                },
              builder: (BuildContext context, state) {
                if (state is AuthLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ChusanButton(
                  bgColor: Colors.blue.shade700,
                  text: "Sign In",
                  onTap: () {
                    context.read<AuthCubit>().signIn(
                      email: widget._emailController.text,
                      password: widget._passwordController.text,
                    );
                  },
                );
              }
              ),
            )
          ],
        ),
      ),
    );
  }
}
