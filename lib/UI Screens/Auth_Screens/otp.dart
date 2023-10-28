// ignore_for_file: avoid_print

import 'package:credit_app/UI%20Screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';

import 'national_id.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _codeController = TextEditingController();
  // ignore: unused_field
  bool _codeFilled = false;
  bool pinFieldEmpty = true;

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
                const Gap(45),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.7,
                          color: const Color.fromRGBO(78, 81, 86, 100),
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Color.fromRGBO(30, 73, 57, 100),
                        ),
                      ],
                    ),
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
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Verify your number ',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            const Gap(30),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Gap(45),
                  Text(
                    'please enter the OTP code sent to \n+233********84',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(78, 81, 86, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(30),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Gap(45),
                  Text(
                    'Enter Verification Code (6 -digits)',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(30, 73, 57, 100),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33.0),
                  child: PinCodeTextField(
                      keyboardType: TextInputType.number,
                      appContext: context,
                      length: 6,
                      blinkWhenObscuring: true,
                      obscureText: true,
                      cursorColor: Colors.black,
                      autoFocus: true,
                      animationType: AnimationType.scale,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      pinTheme: PinTheme(
                          selectedColor: const Color.fromRGBO(30, 73, 57, 100),
                          activeColor: const Color.fromRGBO(30, 73, 57, 100)
                              .withOpacity(0.2),
                          inactiveColor: Colors.grey),
                      controller: _codeController,
                      onChanged: (code) {
                        if (code.length > 5) {
                          setState(() {
                            _codeFilled = true;
                          });
                        } else {
                          setState(() {
                            _codeFilled = false;
                          });
                        }
                      }),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      const Gap(45),
                      Text(
                        'Resend code in 4:59',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(78, 81, 86, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(200),
                MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Home())));
                      _showMyDialog(context);
                    },
                    color: const Color.fromRGBO(30, 73, 57, 1),
                    height: 40.0,
                    minWidth: 300,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Text(
                      'Confirm',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Material(
          type: MaterialType.transparency,
          child: AlertDialog(
            elevation: 10.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Container(
              height: 125,
              width: 120,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                    child: Row(
                      children: [
                        const Gap(70),
                        const Icon(
                          CupertinoIcons.exclamationmark_circle,
                          color: Colors.red,
                          size: 24,
                        ),
                        const Gap(10),
                        Text(
                          'Alert',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(10),
                  const Divider(
                    thickness: 1.0,
                    endIndent: 20,
                    indent: 20,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text:
                          'To gain full access of the Xactscore, kindly update your',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(30, 73, 57, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    TextSpan(
                      text: ' National ID',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NationalId(),
                              ));
                        },
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(30, 73, 57, 1),
                            fontSize: 14.0,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ]))
                ],
              ),
            ),
          ),
        );
      });
}
