import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditUtilization extends StatelessWidget {
  const CreditUtilization({super.key});

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
                  'Credit Utilization',
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
                            'Your Credit Utilization is',
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
                            'Low Impact',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(30, 73, 57, 1),
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
                            'High',
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 70),
                                      child: Text(
                                        '76%',
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
                                      const EdgeInsets.symmetric(horizontal: 11),
                                  child: Text(
                                    'Credit Limit Used',
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
                                    Text(
                                      'Ghs 6,400',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(78, 81, 86, 1),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.3),
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(20),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    'Credit Spent',
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
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Text(
                                        'Ghs 8,400',
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
                                    'Total Credit Limit',
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
                      ),
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
                                  'Highest Limit',
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
                                  'Ghs 8,400',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
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
                                        'Limit used:',
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
                                        'Ghs 6,400',
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
                              
                            ],
                          ),
                          const Gap(20),
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
                                        '22 Aug, 2023',
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
                                  'Credit card Limit',
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
                                  'Ghs 8,400',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
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
                                        'Limit used:',
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
                                        'Not Available',
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
                            ],
                          ),
                          const Gap(20),
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
                                        'Inactive',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Colors.red,
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
                                        '22 Sep, 2023',
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
