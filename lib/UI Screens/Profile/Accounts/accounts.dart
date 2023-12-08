import 'package:credit_app/UI%20Screens/Profile/Accounts/widgets/momo_form.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/bank_form.dart';

class PaymentMode extends StatelessWidget {
  const PaymentMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
        body: SingleChildScrollView(
          child: Column(children: [
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
                  'Account Info',
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
              height: 40.0,
            ),
            Row(children: [
              const SizedBox(
                width: 30.0,
              ),
              Text(
                'My Account Details',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ]),
            const SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    height: 90.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black26,
                              spreadRadius: 1)
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 15.0),
                            Image.asset(
                              'assets/images/bog.png',
                              height: 40.0,
                              width: 30.0,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Bank of Ghana',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 150.0,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.black54,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    height: 94.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black26,
                              spreadRadius: 1)
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 15.0),
                            Image.asset(
                              'assets/images/telecom-mobile-money-12.png',
                              height: 40.0,
                              width: 30.0,
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              'Vodafone',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 180.0,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.black54,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            const Gap(250),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  _bottomsheet(context);
                },
                child: Container(
                    height: 94.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black26,
                              spreadRadius: 1)
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/vector.png',
                                height: 40.0,
                                width: 30.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 150.0),
                                child: Text(
                                  'Add Account',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16.0,
                                color: Colors.black54,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ]),
        ));
  }
}

void _bottomsheet(BuildContext context) {
  showModalBottomSheet(
    showDragHandle: true,
    backgroundColor: Colors.white,
    useSafeArea: true,
    anchorPoint: const Offset(0.0, 5.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    isScrollControlled: true,
    context: context,
    builder: (context) => Container(
      height: 550.0,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        //border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Column(
        children: [
          const Gap(40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BankForm()));
              },
              child: Container(
                  height: 94.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.black26,
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/vector.png',
                              height: 40.0,
                              width: 30.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 90.0),
                              child: Text(
                                'Add Bank Account',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.black54,
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          const Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MomoForm()));
              },
              child: Container(
                  height: 94.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.black26,
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/telecom-mobile-money-12.png',
                              height: 40.0,
                              width: 30.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Text(
                                'Add Mobile Money wallet',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.black54,
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    ),
  );
}
