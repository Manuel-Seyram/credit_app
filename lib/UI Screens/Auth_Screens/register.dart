import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';
import 'ui_widgets/register_form_fields.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 70.0,
            ),
            Row(
              children: [
                const Gap(30),
                FittedBox(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const Gap(50),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Gap(45),
                  Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            RegisterFormfield(),
            const Gap(30),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(78, 81, 86, 1),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign In',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(30, 73, 57, 100),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500),
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ));
                            },
                        )
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
