import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../security/security.dart';

class ProfileHomeOptions2 extends StatelessWidget {
  const ProfileHomeOptions2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Security()));
          },
          child: Container(
            height: 50.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(children: [
              Image.asset(
                'assets/images/security.png',
                height: 50.0,
                width: 50.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text('Security',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color:  Color.fromRGBO(30, 73, 57, 1),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                width: 180.0,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black12,
                size: 20.0,
              )
            ]),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
