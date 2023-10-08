import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/profile_home_options.dart';
import 'widgets/profile_home_options2.dart';
import 'widgets/profile_home_options3.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({super.key});

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
                const Gap(120),
                Center(
                  child: Text(
                    'Profile',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60.0,
            ),
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: AdvancedAvatar(
                  name: 'Kofi Baidoo',
                  autoTextSize: true,
                  statusColor: Colors.greenAccent,
                  size: 110,
                  image: AssetImage('assetName'),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(30, 73, 57, 1),
                      shape: BoxShape.circle),
                  animated: true,
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Center(
              child: Text(
                'Kofi Baidoo',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const ProfileHomeOptions(),
            const SizedBox(
              height: 10.0,
            ),
            const ProfileHomeOptions2(),
            const ProfileHomeOptions3(),
          ],
        ),
      ),
    );
  }
}
