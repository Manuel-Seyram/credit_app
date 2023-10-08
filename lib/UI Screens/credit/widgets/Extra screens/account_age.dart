import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountAge extends StatelessWidget {
  const AccountAge({super.key});

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
                const Gap(60),
                Text(
                  'Account Age',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(78, 81, 86, 1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 200,
                width: 360,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    border: Border(
                        top: BorderSide(
                            color: Color.fromRGBO(30, 73, 57, 1), width: 7),
                        bottom: BorderSide(
                            color: Color.fromRGBO(30, 73, 57, 1), width: 0),
                        left: BorderSide(
                            color: Color.fromRGBO(30, 73, 57, 1), width: 0),
                        right: BorderSide(
                            color: Color.fromRGBO(30, 73, 57, 1), width: 0))),
                child: Column(
                  children: [
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Account Age',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(78, 81, 86, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.3),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Meduim Impact',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.3),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Very Good',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(78, 81, 86, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.3),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(30),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 130),
                                    child: Text(
                                      '2',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(78, 81, 86, 1),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.3),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  'Total Active Account(s)',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Gap(4.5),
                          const VerticalDivider(
                            width: 1.0,
                            indent: 10,
                            endIndent: 10,
                            color: Colors.black,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Text(
                                      '2yrs 11 months',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(78, 81, 86, 1),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.3),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Age of oldest account',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              )
                            ],
                          ), 
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Gap(30),
            Row(
              children: [
                const Gap(25),
                Text(
                  'Account Details',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(78, 81, 86, 1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.3),
                  ),
                ),
              ],
            ),
            const Gap(20),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
                child: SingleChildScrollView(
                  child: Container(
                      width: 360,
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color.fromRGBO(30, 73, 57, 1),
                                  width: 7.5))),
                      child: Column(
                        children: [
                          const Gap(15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.credit_card_rounded,
                                        color: Color.fromRGBO(30, 73, 57, 1),
                                      ),
                                      const Gap(15),
                                      Text(
                                        'Stanbic Bank',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.3),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Age of account',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 60),
                                child: Text(
                                  '5423*******',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  '8 months',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Status:',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.3),
                                        ),
                                      ),
                                      const Gap(15),
                                      Text(
                                        'Active',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Colors.green,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.3),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Updated on:',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.3),
                                        ),
                                      ),
                                      const Gap(15),
                                      Text(
                                        '26 Aug, 2023',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.3),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(30),
                          Container(
                            width: 360,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(245, 246, 250, 1),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
            const Gap(25),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
                child: SingleChildScrollView(
                  child: Container(
                      width: 360,
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color.fromRGBO(30, 73, 57, 1),
                                  width: 7.5))),
                      child: Column(
                        children: [
                          const Gap(15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.credit_card_rounded,
                                        color: Color.fromRGBO(30, 73, 57, 1),
                                      ),
                                      const Gap(15),
                                      Text(
                                        'Fidelity Bank',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.3),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Age of account',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 60),
                                child: Text(
                                  '5423*******',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  '2 years 11 months',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Status:',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.3),
                                        ),
                                      ),
                                      const Gap(15),
                                      Text(
                                        'Active',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Colors.green,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.3),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Updated on:',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.3),
                                        ),
                                      ),
                                      const Gap(15),
                                      Text(
                                        '26 Aug, 2023',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.3),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(30),
                          Container(
                            width: 360,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(245, 246, 250, 1),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
