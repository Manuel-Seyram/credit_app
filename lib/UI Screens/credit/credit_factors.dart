import 'package:credit_app/UI%20Screens/credit/widgets/Extra%20screens/account_age.dart';
import 'package:credit_app/UI%20Screens/credit/widgets/Extra%20screens/account_mix.dart';
import 'package:credit_app/UI%20Screens/credit/widgets/Extra%20screens/credit_inquiry.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/Extra screens/credit_utilization.dart';
import 'widgets/Extra screens/payment_history.dart';

class CreditFactors extends StatefulWidget {
  const CreditFactors({super.key});

  @override
  State<CreditFactors> createState() => _CreditFactorsState();
}

class _CreditFactorsState extends State<CreditFactors> {
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
                  'Credit Health',
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
                  'Credit Factor',
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
                  'See the factors that affects your credit score',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 250,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.black26,
                                spreadRadius: 1)
                          ]),
                      child: Column(
                        children: [
                          const Gap(25),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Payment History',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Low Impact',
                                style: TextStyle(
                                    color: Color.fromRGBO(30, 73, 57, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(40),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                '100%',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const Gap(20),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Payments on time',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          const Gap(40),
                          Row(
                            children: [
                              const Gap(10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PaymentHistory(),
                                      ));
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(30, 73, 57, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Gap(10),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color.fromRGBO(30, 73, 57, 1),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      height: 250,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.black26,
                                spreadRadius: 1)
                          ]),
                      child: Column(
                        children: [
                          const Gap(25),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Credit Utilization',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'High Impact',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(40),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                '76%',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const Gap(20),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Credit limit used',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          const Gap(40),
                          Row(
                            children: [
                              const Gap(10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CreditUtilization(),
                                      ));
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(30, 73, 57, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Gap(10),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color.fromRGBO(30, 73, 57, 1),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 250,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.black26,
                                spreadRadius: 1)
                          ]),
                      child: Column(
                        children: [
                          const Gap(25),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Account Age',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Medium Impact',
                                style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(40),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                '1 year 2 months',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const Gap(20),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'age of account',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          const Gap(40),
                          Row(
                            children: [
                              const Gap(10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AccountAge(),
                                      ));
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(30, 73, 57, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Gap(10),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color.fromRGBO(30, 73, 57, 1),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      height: 250,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.black26,
                                spreadRadius: 1)
                          ]),
                      child: Column(
                        children: [
                          const Gap(25),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Account Mix',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Low Impact',
                                style: TextStyle(
                                    color: Color.fromRGBO(30, 73, 57, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(40),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const Gap(20),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Active accounts',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          const Gap(40),
                          Row(
                            children: [
                              const Gap(10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AccountMix(),
                                      ));
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(30, 73, 57, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Gap(10),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color.fromRGBO(30, 73, 57, 1),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 250,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.black26,
                                spreadRadius: 1)
                          ]),
                      child: Column(
                        children: [
                          const Gap(25),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Credit Inquiries',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Medium Impact',
                                style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Gap(40),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const Gap(20),
                          const Row(
                            children: [
                              Gap(10),
                              Text(
                                'Total inquiries ',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          const Gap(40),
                          Row(
                            children: [
                              const Gap(10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CreditInquiry(),
                                      ));
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(30, 73, 57, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Gap(10),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color.fromRGBO(30, 73, 57, 1),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}
