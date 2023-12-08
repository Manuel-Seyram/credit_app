// ignore_for_file: use_build_context_synchronously, unused_field

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../controllers/auth controllers/register_auth_controller.dart';

class RegisterFormfield extends StatefulWidget {
  const RegisterFormfield({super.key});

  @override
  State<RegisterFormfield> createState() => _RegisterFormfieldState();
}

class _RegisterFormfieldState extends State<RegisterFormfield> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final fullNameValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
  ]);

  final emailphoneValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    EmailValidator(errorText: 'Enter a valid email')
  ]);

  final phoneValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
  ]);

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    MinLengthValidator(8, errorText: 'Password must be at least 8 characters')
  ]);

  final confirmPasswordValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    MinLengthValidator(8, errorText: 'Password must be at least 8 characters')
  ]);

  bool _isLoaderVisible = false;

  RegisterController registerController = Get.put(RegisterController());

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
              _textformfieldemail(),
              const SizedBox(
                height: 30.0,
              ),
              _textformfieldnumber(),
              const SizedBox(
                height: 30.0,
              ),
              _textformfieldpassword(),
              const SizedBox(
                height: 30.0,
              ),
              _textformfieldConfirmpassword(),
              const SizedBox(
                height: 70.0,
              ),
              MaterialButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      context.loaderOverlay.show(
                        progress: 'Please wait...',
                      );
                      setState(() {
                        _isLoaderVisible = context.loaderOverlay.visible;
                      });
                      await Future.delayed(const Duration(seconds: 2));
                      context.loaderOverlay.progress(
                        'Registering you...',
                      );
                      await Future.delayed(const Duration(seconds: 2));
                      context.loaderOverlay.progress(
                        'Adding you to the xactscore family...',
                      );
                      try {
                        await registerController.registerUser();
                        // If the login is successful, hide the loader
                        context.loaderOverlay.hide();
                      } catch (error) {
                        // Handle login error here if needed
                        if (kDebugMode) {
                          print('Registeration failed: $error');
                        }
                        context.loaderOverlay.hide();
                      }
                    } else {
                      Get.defaultDialog(
                          radius: 10,
                          title: 'Error',
                          titleStyle: const TextStyle(color: Colors.red),
                          content: const Text(
                            'Please check form and try again',
                            maxLines: 2,
                            softWrap: true,
                          ),
                          confirm: TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text(
                                'OK',
                                style: TextStyle(
                                  color: Color.fromRGBO(30, 73, 57, 1),
                                ),
                              )));
                    }
                  },
                  color: const Color.fromRGBO(30, 73, 57, 1),
                  height: 40.0,
                  minWidth: 300,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text(
                    'Sign up',
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
        keyboardType: TextInputType.name,
        controller: registerController.fullnameController,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Full Name',
            errorStyle: TextStyle(fontSize: 0.5),
            labelStyle:
                TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        validator: fullNameValidator,
      ),
    );
  }

  Widget _textformfieldemail() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: registerController.emailController,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Email',
            errorStyle: TextStyle(fontSize: 0.5),
            labelStyle:
                TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        validator: emailphoneValidator,
      ),
    );
  }

  Widget _textformfieldnumber() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: registerController.phoneController,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Phone Number',
            errorStyle: TextStyle(fontSize: 0.5),
            labelStyle:
                TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        validator: phoneValidator,
      ),
    );
  }

  Widget _textformfieldpassword() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: registerController.passwordController,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Password',
            errorStyle: TextStyle(fontSize: 0.5),
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

  Widget _textformfieldConfirmpassword() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: registerController.passwordConfirmController,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Confirm Password',
            errorStyle: TextStyle(fontSize: 0.5),
            labelStyle:
                TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        obscureText: true,
        validator: confirmPasswordValidator,
      ),
    );
  }
}
