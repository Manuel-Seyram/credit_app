import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../otp.dart';

class RegisterFormfield extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();
  RegisterFormfield({super.key});

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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Otp(),
                        ));
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
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Full Name',
            labelStyle: TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        // validator: validateEmailorPhonenumber,
      ),
    );
  }

  Widget _textformfieldemail() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Email',
            labelStyle:
                TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        // validator: validateEmailorPhonenumber,
      ),
    );
  }

  Widget _textformfieldnumber() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Phone Number',
            labelStyle:
                TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        // validator: validateEmailorPhonenumber,
      ),
    );
  }

  Widget _textformfieldpassword() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        obscureText: true,
      ),
    );
  }
}

Widget _textformfieldConfirmpassword() {
  return SizedBox(
    child: TextFormField(
      keyboardType: TextInputType.text,
      style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w500)),
      decoration: const InputDecoration(
          labelText: 'Confirm Password',
          labelStyle: TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
          suffixIcon: Icon(
            Icons.check_circle_rounded,
          )),
      obscureText: true,
    ),
  );
}
