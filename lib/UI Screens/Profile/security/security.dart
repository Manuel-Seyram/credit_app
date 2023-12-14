import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Auth_Screens/national_id.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool _switchValue = false;
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Gap(60),
          Row(
            children: [
              const Gap(25),
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
              const Gap(80),
              Text(
                'Security',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 70.0,
          ),
          Container(
            height: 60.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(children: [
              const SizedBox(
                width: 10.0,
              ),
              Text('Default Notification Actions',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  )),
              const SizedBox(
                width: 45.0,
              ),
              CupertinoSwitch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              )
            ]),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 60.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(children: [
              const SizedBox(
                width: 10.0,
              ),
              Text('Login with Face ID',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  )),
              const SizedBox(
                width: 120.0,
              ),
              CupertinoSwitch(
                value: _switchValue1,
                onChanged: (value) {
                  setState(() {
                    _switchValue1 = value;
                  });
                },
              )
            ]),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 60.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(children: [
              const SizedBox(
                width: 10.0,
              ),
              Text('Login with Touch ID',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  )),
              const SizedBox(
                width: 110.0,
              ),
              CupertinoSwitch(
                value: _switchValue2,
                onChanged: (value) {
                  setState(() {
                    _switchValue2 = value;
                  });
                },
              )
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 60.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  const NationalId(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('National ID',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black87,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                          )),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black12,
                        size: 20.0,
                      )
                    ]),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
