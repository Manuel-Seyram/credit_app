import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'UI Screens/Auth_Screens/login.dart';

void main() {
  runApp(GlobalLoaderOverlay(
    useDefaultLoading: false,
    overlayWidgetBuilder: (progress) {
      return Column(
        children: [
          const Gap(350),
          const Center(
            child: SpinKitFoldingCube(
              color: Color.fromRGBO(30, 73, 57, 1),
              size: 30,
            ),
          ),
          const Gap(20),
          if (progress != null)
            Text(
              progress,
              style: const TextStyle(color: Colors.black),
            )
        ],
      );
    },
    child: GetMaterialApp(
      home: const Login(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        expansionTileTheme: const ExpansionTileThemeData(
          collapsedIconColor: Color.fromRGBO(30, 73, 57, 1),
          collapsedTextColor: Color.fromRGBO(30, 73, 57, 1),
        ),
        focusColor: const Color.fromRGBO(30, 73, 57, 1),
        highlightColor: const Color.fromRGBO(30, 73, 57, 1),
        primaryColor: const Color.fromRGBO(30, 73, 57, 1),
      ),
    ),
  ));
}
