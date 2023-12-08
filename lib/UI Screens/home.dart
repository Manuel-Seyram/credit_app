import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:credit_app/UI%20Screens/credit/credit_health.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/user controllers/get_xactscore_users.dart';
import 'Report/report.dart';
import 'Profile/profile_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  final double _progress = 550;
  final String _downBy = '20';
  final XactscoreUsers xactscoreUsers = Get.put(XactscoreUsers());

  Future<Map<String, dynamic>> getUserData() async {
    dynamic userRes;
    userRes = await xactscoreUsers.getUserProfileData();
    return userRes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: FutureBuilder(
          future: getUserData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              String firstName = snapshot.data?['first_name'] ?? 'Unknown';
              String lastName = snapshot.data?['last_name'] ?? 'Unknown';

              return SingleChildScrollView(
                child: Column(
                  children: [
                    const Gap(60),
                    Row(
                      children: [
                        const Gap(25),
                        AdvancedAvatar(
                          name: "$firstName $lastName",
                          statusColor: Colors.greenAccent,
                          image: const AssetImage('assetName'),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(30, 73, 57, 1),
                              shape: BoxShape.circle),
                          animated: true,
                        ),
                        const Gap(15),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 65.0),
                              child: Text('Welcome,',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Color.fromRGBO(78, 81, 86, 1),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.3))),
                            ),
                            const Gap(5),
                            Text("$firstName $lastName",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.3))),
                          ],
                        )
                      ],
                    ),
                    const Gap(20),
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
                              RefreshIndicator(
                                key: _refreshIndicatorKey,
                                backgroundColor:
                                    const Color.fromRGBO(245, 246, 250, 100)
                                        .withOpacity(0.1),
                                color: const Color.fromRGBO(30, 73, 57, 1),
                                strokeWidth: 1.0,
                                onRefresh: () async {
                                  // Replace this delay with the code to be executed during refresh
                                  // and return a Future when code finishes execution.
                                  return Future<void>.delayed(
                                      const Duration(seconds: 2), () {
                                    setState(() {
                                      _progress;
                                      if (kDebugMode) {
                                        print(_progress);
                                      }
                                    });
                                  });
                                },
                                child: Center(
                                  child: CircularSeekBar(
                                    width: 200,
                                    height: 200,
                                    progress: _progress,
                                    barWidth: 10,
                                    minProgress: 0,
                                    maxProgress: 850,
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
                                    innerThumbColor:
                                        const Color.fromRGBO(30, 73, 57, 1),
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
                                                      textStyle:
                                                          const TextStyle(
                                                              color:
                                                                  Color
                                                                      .fromRGBO(
                                                                          30,
                                                                          73,
                                                                          57,
                                                                          1),
                                                              fontSize: 20.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Gap(24),
                                                      const Icon(
                                                        Icons.arrow_drop_up,
                                                        color: Color.fromRGBO(
                                                            30, 73, 57, 1),
                                                      ),
                                                      Text(
                                                        _downBy,
                                                        style:
                                                            GoogleFonts.poppins(
                                                          textStyle: const TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      30,
                                                                      73,
                                                                      57,
                                                                      1),
                                                              fontSize: 12.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
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
                              ),
                            ],
                          ),
                          Text('900',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color.fromRGBO(10, 48, 114, 1),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.3))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70.0,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Center(
                            child: Text('Your credit is good,',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.3))),
                          ),
                          Center(
                            child: Text('Keep it up 👍',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.3))),
                          ),
                          Center(
                            child: Text('Last updated on 31 Mar 2023',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(78, 81, 86, 1),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.3))),
                          )
                        ],
                      ),
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(30, 73, 57, 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Text('Click refresh to view updated score',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.3))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  _refreshIndicatorKey.currentState?.show();
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(5), // <-- Radius
                                  ),
                                ),
                                child: Text('Refresh',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color:
                                                Color.fromRGBO(30, 73, 57, 1),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.3))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Gap(30),
                    SizedBox(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          const Gap(35),
                          Text('Quick Links',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color.fromRGBO(78, 81, 86, 1),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.3)))
                        ],
                      ),
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            const Gap(25),
                            GestureDetector(
                              onTap: () {
                                if (kDebugMode) {
                                  print('clicked');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CreditHealth(),
                                      ));
                                }
                              },
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Column(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        'assets/images/credit.png',
                                        height: 40,
                                        width: 40,
                                      ),
                                    ),
                                    const Gap(5),
                                    Center(
                                      child: Text('Credit Health',
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: Color.fromRGBO(
                                                      78, 81, 86, 1),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.3))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Gap(10),
                            const VerticalDivider(
                              thickness: 1.0,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                            const Gap(35),
                            GestureDetector(
                              onTap: () {
                                if (kDebugMode) {
                                  print('clicked');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Report(),
                                      ));
                                }
                              },
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Column(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                          'assets/images/chart.png',
                                          height: 40,
                                          width: 40),
                                    ),
                                    const Gap(5),
                                    Center(
                                      child: Text('Report',
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: Color.fromRGBO(
                                                      78, 81, 86, 1),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.3))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Gap(35),
                            const VerticalDivider(
                              thickness: 1.0,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                            const Gap(25),
                            GestureDetector(
                              onTap: () {
                                if (kDebugMode) {
                                  print('clicked');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ProfileHome(),
                                      ));
                                }
                              },
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Column(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                          'assets/images/profile.png',
                                          height: 40,
                                          width: 40),
                                    ),
                                    const Gap(5),
                                    Center(
                                      child: Text('Profile',
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: Color.fromRGBO(
                                                      78, 81, 86, 1),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.3))),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: 120,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            const Gap(20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text('Credit Report Summary',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.3)))
                                ],
                              ),
                            ),
                            const Gap(10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Date',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.3))),
                                  Text('2022-01-01',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.3)))
                                ],
                              ),
                            ),
                            const Gap(10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Account Number',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.3))),
                                  Text('10000011414142',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(78, 81, 86, 1),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.3)))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            } else {
              debugPrint(snapshot.error.toString());
            }
            return const SizedBox();
          }),
    );
  }
}
