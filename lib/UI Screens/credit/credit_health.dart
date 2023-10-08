import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'credit_factors.dart';
import 'widgets/graph.dart';

class CreditHealth extends StatefulWidget {
  const CreditHealth({super.key});

  @override
  State<CreditHealth> createState() => _CreditHealthState();
}

class _CreditHealthState extends State<CreditHealth> {
  final double _progress = 550;
  final String _downBy = '20';

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
            SizedBox(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Gap(70),
                  Text('300',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(78, 81, 86, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3))),
                  Column(
                    children: [
                      Center(
                        child: CircularSeekBar(
                          width: 200,
                          height: 200,
                          progress: _progress,
                          barWidth: 10,
                          minProgress: 0.0,
                          maxProgress: 850.0,
                          startAngle: 45,
                          sweepAngle: 270,
                          strokeCap: StrokeCap.square,
                          trackColor: Colors.grey,
                          progressGradientColors: const [
                            Colors.red,
                            Colors.orange,
                            Colors.yellow,
                            Colors.greenAccent,
                            Colors.green,
                          ],
                          innerThumbRadius: 7,
                          innerThumbStrokeWidth: 3,
                          innerThumbColor: const Color.fromRGBO(30, 73, 57, 1),
                          outerThumbRadius: 7,
                          outerThumbStrokeWidth: 5,
                          outerThumbColor: Colors.white,
                          animation: true,
                          child: Center(
                            child: Column(
                              children: [
                                const Gap(55),
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 20,
                                          color: Colors.black26,
                                          spreadRadius: 5)
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Colors.white,
                                    child: Column(
                                      children: [
                                        const Gap(30),
                                        Text(
                                          '$_progress',
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    30, 73, 57, 1),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const Gap(24),
                                            const Icon(
                                              Icons.arrow_drop_up,
                                              color:
                                                  Color.fromRGBO(30, 73, 57, 1),
                                            ),
                                            Text(
                                              _downBy,
                                              style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    color: Color.fromRGBO(
                                                        30, 73, 57, 1),
                                                    fontSize: 12.0,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text('900',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(78, 81, 86, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const CreditFactors())));
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromRGBO(30, 73, 57, 1))),
                  child: Center(
                    child: Text('See what changed',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(30, 73, 57, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.3))),
                  ),
                ),
              ),
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2, color: Colors.black26, spreadRadius: 1)
                    ]),
                child: const Column(
                  children: [
                    Gap(20),
                    CreditGraph(),
                  ],
                ),
              ),
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
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
                      const Gap(15),
                      Row(
                        children: [
                          const Gap(10),
                          Text(
                            'Mar 28',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.3)),
                          ),
                          const Gap(240),
                          Text(
                            '720',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(30, 73, 57, 1),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.3)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Gap(10),
                          Text(
                            'Your score went up 20 pts',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.3)),
                          ),
                          const Gap(100),
                          Row(
                            children: [
                              const Icon(
                                Icons.arrow_drop_up,
                                color: Color.fromRGBO(30, 73, 57, 1),
                              ),
                              Text(
                                '20 pts',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(30, 73, 57, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.3)),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
