// ignore_for_file: must_be_immutable, use_build_context_synchronously, unused_field

import 'package:credit_app/UI%20Screens/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../controllers/user controllers/get_xactscore_users.dart';
import '../../controllers/user controllers/update_user_controller.dart';

class NationalId extends StatefulWidget {
  const NationalId({super.key});

  @override
  State<NationalId> createState() => _NationalIdState();
}

class _NationalIdState extends State<NationalId> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final fullNameValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
  ]);

  final nationalityValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
  ]);

  final dobValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    DateValidator('dd/mm/yyyy', errorText: 'Wrong date format')
  ]);

  final sexValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
  ]);

  final idNumberValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    MaxLengthValidator(15, errorText: 'please add -')
  ]);

  final documentNumberValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    MaxLengthValidator(9, errorText: 'Should 9 characters')
  ]);

  final heightValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
  ]);

  final placeofIssuanceValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
  ]);

  final expiryDateValidator = MultiValidator([
    RequiredValidator(errorText: 'This field is required'),
    DateValidator('dd/mm/yyyy', errorText: 'Wrong date format')
  ]);

  UpdateUser updateController = Get.put(UpdateUser());
  XactscoreUsers users = Get.put(XactscoreUsers());

  bool _isLoaderVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Gap(45),
                Row(
                  children: [
                    const Gap(30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ));
                      },
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
                  ],
                ),
                const Gap(20),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 80.0,
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Gap(30),
                          FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'National Identity Card',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.20,
                                    color: Colors.black),
                              )),
                        ],
                      ),
                      Gap(5),
                      Row(
                        children: [
                          Gap(30),
                          FittedBox(
                            child: Text(
                              'Fill the form below',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  letterSpacing: 0.38),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Text('Full name',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 0.3)),
                    ],
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: ShapeDecoration(
                        color: Colors.grey.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color.fromRGBO(78, 81, 86, 100),
                          ),
                        )),
                    width: 350.0,
                    height: 56.0,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: updateController.fullNameController,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.30),
                      decoration: const InputDecoration(
                          hintText: 'john doe',
                          contentPadding: EdgeInsets.all(10.0),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                      validator: fullNameValidator,
                    ),
                  ),
                ),
                const Gap(20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Text('Nationality',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 0.3)),
                    ],
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: ShapeDecoration(
                        color: Colors.grey.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color.fromRGBO(78, 81, 86, 100),
                          ),
                        )),
                    width: 350.0,
                    height: 56.0,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: updateController.nationalityController,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.30),
                      decoration: const InputDecoration(
                          hintText: 'enter nationality',
                          contentPadding: EdgeInsets.all(10.0),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                      validator: nationalityValidator,
                    ),
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 50),
                            child: Row(
                              children: [
                                Text('Date of birth',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                          ),
                          const Gap(10),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              decoration: ShapeDecoration(
                                  color: Colors.grey.shade100,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Color.fromRGBO(78, 81, 86, 100),
                                    ),
                                  )),
                              width: 170.0,
                              height: 56.0,
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                controller: updateController.dobController,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.30),
                                decoration: const InputDecoration(
                                    hintText: 'dd/mm/yyyy',
                                    contentPadding: EdgeInsets.all(10.0),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                                validator: dobValidator,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 165),
                            child: Row(
                              children: [
                                Text('Sex',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                          ),
                          const Gap(10),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Container(
                              decoration: ShapeDecoration(
                                  color: Colors.grey.shade100,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Color.fromRGBO(78, 81, 86, 100),
                                    ),
                                  )),
                              width: 170.0,
                              height: 56.0,
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                controller: updateController.sexController,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.30),
                                decoration: const InputDecoration(
                                    hintText: 'Gender',
                                    contentPadding: EdgeInsets.all(10.0),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                                validator: sexValidator,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Text('ID number',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 0.3)),
                    ],
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: ShapeDecoration(
                        color: Colors.grey.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color.fromRGBO(78, 81, 86, 100),
                          ),
                        )),
                    width: 350.0,
                    height: 56.0,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: updateController.idNumberController,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.30),
                      decoration: const InputDecoration(
                          hintText: 'GHA-000000000-0',
                          contentPadding: EdgeInsets.all(10.0),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                      validator: idNumberValidator,
                    ),
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Row(
                              children: [
                                Text('Document Number',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                          ),
                          const Gap(10),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              decoration: ShapeDecoration(
                                  color: Colors.grey.shade100,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Color.fromRGBO(78, 81, 86, 100),
                                    ),
                                  )),
                              width: 168.2,
                              height: 56.0,
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                controller:
                                    updateController.documentNumberController,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.30),
                                decoration: const InputDecoration(
                                    hintText: 'AS0000000',
                                    contentPadding: EdgeInsets.all(10.0),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                                validator: documentNumberValidator,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 80),
                            child: Row(
                              children: [
                                Text('Height (in meters)',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                          ),
                          const Gap(10),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Container(
                              decoration: ShapeDecoration(
                                  color: Colors.grey.shade100,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Color.fromRGBO(78, 81, 86, 100),
                                    ),
                                  )),
                              width: 168.2,
                              height: 56.0,
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                controller: updateController.heightController,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.30),
                                decoration: const InputDecoration(
                                    hintText: '0.00m',
                                    contentPadding: EdgeInsets.all(10.0),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                                validator: heightValidator,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Text('Place of Issuance',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                          ),
                          const Gap(10),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              decoration: ShapeDecoration(
                                  color: Colors.grey.shade100,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Color.fromRGBO(78, 81, 86, 100),
                                    ),
                                  )),
                              width: 167.0,
                              height: 56.0,
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                controller:
                                    updateController.placeofIssuanceController,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.30),
                                decoration: const InputDecoration(
                                    hintText: 'Accra',
                                    contentPadding: EdgeInsets.all(10.0),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                                validator: placeofIssuanceValidator,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 115),
                            child: Row(
                              children: [
                                Text('Expiry date',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                          ),
                          const Gap(10),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Container(
                              decoration: ShapeDecoration(
                                  color: Colors.grey.shade100,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Color.fromRGBO(78, 81, 86, 100),
                                    ),
                                  )),
                              width: 167.0,
                              height: 56.0,
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                controller:
                                    updateController.expiryDateController,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.30),
                                decoration: const InputDecoration(
                                    hintText: 'dd/mm/yyyy',
                                    contentPadding: EdgeInsets.all(10.0),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                                validator: expiryDateValidator,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(40),
                Center(
                    child: Container(
                        decoration: ShapeDecoration(
                            color: const Color.fromRGBO(30, 73, 57, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        width: 350.0,
                        height: 56.0,
                        child: MaterialButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              context.loaderOverlay.show(
                                progress: 'Please wait...',
                              );
                              setState(() {
                                _isLoaderVisible =
                                    context.loaderOverlay.visible;
                              });
                              await Future.delayed(const Duration(seconds: 2));
                              context.loaderOverlay.progress(
                                'Adding your Ghana card...',
                              );
                              try {
                                // Retrieve user ID from XactscoreUsers
                                final userProfileData =
                                    await XactscoreUsers().getUserProfileData();
                                final userIDString = userProfileData['id'];
                                if (kDebugMode) {
                                  print('User ID: $userIDString');
                                }
                                if (userIDString != null) {
                                  final userID = userIDString
                                      .toString(); // Convert to string
                                  await UpdateUser().updateUser(userID);
                                } else {
                                  if (kDebugMode) {
                                    print('User ID is null in userProfileData');
                                  }
                                }
                                // If the update is successful, hide the loader
                                context.loaderOverlay.hide();
                              } catch (error) {
                                // Handle update error here if needed
                                if (kDebugMode) {
                                  print('Adding Ghana card failed: $error');
                                }
                                context.loaderOverlay.hide();
                              }
                            } else {
                              Get.defaultDialog(
                                  radius: 10,
                                  title: 'Error',
                                  titleStyle:
                                      const TextStyle(color: Colors.red),
                                  content: const Text(
                                    'Please check form and try again.',
                                    maxLines: 2,
                                    softWrap: true,
                                  ),
                                  confirm: TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: const Text('OK')));
                            }
                          },
                          splashColor: const Color.fromRGBO(30, 73, 57, 1),
                          child: const Text(
                            'Save',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ))),
                const Gap(20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
