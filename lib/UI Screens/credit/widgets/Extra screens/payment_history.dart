import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

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
                  'Payment History',
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
            Row(
              children: [
                const Gap(25),
                Text(
                  'Improvement',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(78, 81, 86, 1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.3),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Gap(25),
                Text(
                  'Personalized suggestions to help you\nimprove your credit score',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(78, 81, 86, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.3),
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
                            'Your payment history is',
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            '100%',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(78, 81, 86, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.3),
                            ),
                          ),
                        )
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
                                    padding: const EdgeInsets.only(right:75),
                                    child: Text(
                                      '32',
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
                                  'Total payments',
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
                                    padding: const EdgeInsets.only(right:95),
                                    child: Text(
                                      '32',
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
                                  'On time payments',
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
                  'My Credit Cards',
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
                                  'Timely Payments',
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
                                  '16/16',
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
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(245, 246, 250, 1),
                            ),
                            child: ExpansionTile(
                              title: Text(
                                'View Details',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color.fromRGBO(30, 73, 57, 1),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.3),
                                ),
                              ),
                              //controlAffinity: ListTileControlAffinity.trailing,
                              tilePadding:
                                  const EdgeInsets.only(left: 20, right: 210),
                              iconColor: const Color.fromRGBO(30, 73, 57, 1),
                              textColor: const Color.fromRGBO(30, 73, 57, 1),
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Gap(20),
                                        Text(
                                          'Account payment history ',
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    78, 81, 86, 1),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.3),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(15),
                                    Row(
                                      children: [
                                        const Gap(20),
                                        Text(
                                          'Filter: ',
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    78, 81, 86, 1),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.3),
                                          ),
                                        ),
                                        const Gap(10),
                                        Container(
                                          height: 40,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: const Border(
                                                  top: BorderSide(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      width: 1),
                                                  bottom: BorderSide(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      width: 1),
                                                  left: BorderSide(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      width: 1),
                                                  right: BorderSide(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      width: 1))),
                                        ),
                                        const Gap(20),
                                        const Gap(20),
                                        
                                      ],
                                    ),
                                    const Gap(20),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                'Jan ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Jul ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'Feb ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Aug ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'Mar ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Sep ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'Apr ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Oct ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'May ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Nov ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'Jun ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Dec ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                        ],
                                      ),
                                    ),
                                    const Gap(20),
                                  ],
                                )
                              ],
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
                                  'Timely Payments',
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
                                  '16/16',
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
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(245, 246, 250, 1),
                            ),
                            child: ExpansionTile(
                              title: Text(
                                'View Details',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color.fromRGBO(30, 73, 57, 1),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.3),
                                ),
                              ),
                              //controlAffinity: ListTileControlAffinity.trailing,
                              tilePadding:
                                  const EdgeInsets.only(left: 20, right: 210),
                              iconColor: const Color.fromRGBO(30, 73, 57, 1),
                              textColor: const Color.fromRGBO(30, 73, 57, 1),
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Gap(20),
                                        Text(
                                          'Account payment history ',
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    78, 81, 86, 1),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.3),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(15),
                                    Row(
                                      children: [
                                        const Gap(20),
                                        Text(
                                          'Filter: ',
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    78, 81, 86, 1),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.3),
                                          ),
                                        ),
                                        const Gap(10),
                                        Container(
                                          height: 40,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: const Border(
                                                  top: BorderSide(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      width: 1),
                                                  bottom: BorderSide(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      width: 1),
                                                  left: BorderSide(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      width: 1),
                                                  right: BorderSide(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      width: 1))),
                                        ),
                                        const Gap(20),
                                        const Gap(20),
                                      ],
                                    ),
                                    const Gap(20),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                'Jan ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Jul ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'Feb ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Aug ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'Mar ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Sep ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'Apr ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Oct ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'May ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Nov ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                          Column(
                                            children: [
                                              Text(
                                                'Jun ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                              const Gap(10),
                                              Text(
                                                'Dec ',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: Color.fromRGBO(
                                                          78, 81, 86, 1),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.3),
                                                ),
                                              ),
                                              const Gap(10),
                                              const Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                              ),
                                            ],
                                          ),
                                          const Gap(20),
                                        ],
                                      ),
                                    ),
                                    const Gap(20),
                                  ],
                                )
                              ],
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
