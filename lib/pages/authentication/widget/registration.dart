import 'package:chusan_app/blocs/bloc_barrel.dart';
import 'package:chusan_app/widgets/chusan_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class RegistrationWidget extends StatefulWidget {
  RegistrationWidget({
    Key? key,
    required TextEditingController fullNameController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController passwordConfirmationController,
    required tingkatanDropdownValue,
    required sekolahDropdownValue,
  })  : _fullNameController = fullNameController,
        _emailController = emailController,
        _passwordController = passwordController,
        _passwordConfirmationController = passwordConfirmationController,
        _tingkatanDropdownValue = tingkatanDropdownValue,
        _sekolahDropdownValue = sekolahDropdownValue,
        super(key: key);

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();

  final TextEditingController _fullNameController;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final TextEditingController _passwordConfirmationController;
  String? _tingkatanDropdownValue;
  String? _sekolahDropdownValue;
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  /// Value holders
  final List<String?> tingkatanList = [
    'Kelas VII',
    'Kelas VIII',
    'Kelas IX',
  ];

  final List<String?> sekolahList = [
    'MTsN 1 Sidoarjo',
    'MTsN 2 Sidoarjo',
    'MTsN 3 Sidoarjo',
    'MTsN 4 Pasuruan',
    'Lainnya',
  ];

  bool _passwordVisible = false;

  /// Keys
  final GlobalKey<FormState> _registrationFormKey = GlobalKey<FormState>();
  final GlobalKey _tingkatanDropDownKey = GlobalKey();
  final GlobalKey _sekolahDropDownKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registrationFormKey,
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
            /// Full Name
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
                    child: TextFormField(
                      controller: widget._fullNameController,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "Name"),
                    ),
                  ),
                ),
              ],
            ),

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
                    child: TextFormField(
                      controller: widget._emailController,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "Email"),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please a Enter';
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Please a valid Email';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),

            /// Tingkatan
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomDropDown(
                  key: _tingkatanDropDownKey,
                  dropdownValueHolder: widget._tingkatanDropdownValue,
                  inputList: tingkatanList,
                  titleText: 'Pilih Kelas',
                ),
              ],
            ),

            /// Sekolah
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomDropDown(
                  key: _sekolahDropDownKey,
                  dropdownValueHolder: widget._sekolahDropdownValue,
                  inputList: sekolahList,
                  titleText: 'Pilih Sekolah',
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

            /// Password Confirmation
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
                      controller: widget._passwordConfirmationController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "Password Confirmation",
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
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please re-enter password';
                        }
                        if (widget._passwordController.text !=
                            widget._passwordConfirmationController.text) {
                          return "Password does not match";
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
                    text: "Register",
                    onTap: () {
                      if (_registrationFormKey.currentState!.validate()) {
                        context.read<AuthCubit>().signUp(
                              email: widget._emailController.text,
                              password: widget._passwordController.text,
                              name: widget._fullNameController.text,
                              tingkat: widget._tingkatanDropdownValue ?? 'Tidak Diisi',
                              sekolah: widget._sekolahDropdownValue ?? 'Tidak Diisi',
                            );
                      }
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomDropDown extends StatefulWidget {

  CustomDropDown({
    GlobalKey? key,
    required String? dropdownValueHolder,
    required this.inputList,
    required this.titleText,
  })  : _dropdownValueHolder = dropdownValueHolder,
        super(key: key);

  String? _dropdownValueHolder;
  final List<String?> inputList;
  final String titleText;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey.withOpacity(.3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: DropdownButton<String?>(
          isExpanded: true,
          hint: Text(widget.titleText),
          value: widget._dropdownValueHolder,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 0,
          ),
          onChanged: (String? newValue) {
            setState(() {
              widget._dropdownValueHolder = newValue!;
            });
          },
          items: widget.inputList.map<DropdownMenuItem<String?>>((String? value) {
            return DropdownMenuItem<String?>(
              value: value,
              child: Text(value!),
            );
          }).toList(),
        ),
      ),
    );
  }
}
