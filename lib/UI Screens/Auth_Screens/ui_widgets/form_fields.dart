// ignore_for_file: unused_field, use_build_context_synchronously
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../controllers/auth controllers/login_auth_controller.dart';

class LoginFormfield extends StatefulWidget {
  const LoginFormfield({super.key});

  @override
  State<LoginFormfield> createState() => _LoginFormfieldState();
}

class _LoginFormfieldState extends State<LoginFormfield> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final emailphoneValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    EmailValidator(errorText: 'Enter a valid email')
  ]);

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    MinLengthValidator(8, errorText: 'Password must be at least 8 characters')
  ]);
  bool _isLoaderVisible = false;

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              _textformfieldname(),
              const SizedBox(
                height: 30.0,
              ),
              _textformfieldpassword(),
              Align(
                alignment: const AlignmentDirectional(0.9, 5.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(30, 73, 57, 100),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              const SizedBox(
                height: 109.0,
              ),
              MaterialButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      context.loaderOverlay.show(
                        progress: 'Logging you in...',
                      );
                      setState(() {
                        _isLoaderVisible = context.loaderOverlay.visible;
                      });
                      await Future.delayed(const Duration(seconds: 2));
                      context.loaderOverlay.progress(
                        'Welcome back to xactscore...',
                      );
                      try {
                        await loginController.loginUser();
                        // If the login is successful, hide the loader
                        context.loaderOverlay.hide();
                      } catch (error) {
                        // Handle login error here if needed
                        if (kDebugMode) {
                          print('Login failed: $error');
                        }
                        context.loaderOverlay.hide();
                      }
                    } else {
                      Get.defaultDialog(
                          radius: 10,
                          title: 'Error',
                          titleStyle: const TextStyle(color: Colors.red),
                          content: const Text(
                            'Please enter a valid email or password to proceed!',
                            maxLines: 2,
                            softWrap: true,
                          ),
                          confirm: TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text('OK')));
                    }
                  },
                  color: const Color.fromRGBO(30, 73, 57, 1),
                  height: 40.0,
                  minWidth: 300,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text(
                    'login',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ))
            ],
          )),
    );
  }

  Widget _textformfieldname() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: loginController.emailController,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            errorStyle: TextStyle(fontSize: 0.5),
            labelText: 'Phone Number / Email',
            labelStyle:
                TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        validator: emailphoneValidator,
      ),
    );
  }

  Widget _textformfieldpassword() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: loginController.passwordController,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            errorStyle: TextStyle(fontSize: 0.5),
            labelText: 'Password',
            labelStyle:
                TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        obscureText: true,
        validator: passwordValidator,
      ),
    );
  }
}
