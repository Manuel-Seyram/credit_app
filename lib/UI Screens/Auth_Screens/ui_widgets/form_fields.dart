import 'package:credit_app/UI%20Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginFormfield extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();
  LoginFormfield({super.key});

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
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
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
        keyboardType: TextInputType.name,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Phone Number / Email',
            labelStyle: TextStyle(color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
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
