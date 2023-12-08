import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../home.dart';

class MomoForm extends StatefulWidget {
  const MomoForm({super.key});

  @override
  State<MomoForm> createState() => _MomoFormState();
}

class _MomoFormState extends State<MomoForm> {
  final List<String> banks = [
    'Vodafone',
    'Mtn',
    'AirtelTigo',
  ];
  String? selectedValue;

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
            const Gap(40),
            Row(children: [
              const SizedBox(
                width: 30.0,
              ),
              Text(
                'My Momo Details',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ]),
            const Gap(30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Mobile Network',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                              'assets/images/telecom-mobile-money-12.png'),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Select mobile network',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            items: banks
                                .map((String banks) => DropdownMenuItem<String>(
                                      value: banks,
                                      child: Text(
                                        banks,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                            buttonStyleData: const ButtonStyleData(
                              height: 50,
                              width: 250,
                              padding: EdgeInsets.only(left: 14, right: 14),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.arrow_drop_down_sharp,
                              ),
                              iconSize: 16,
                              iconEnabledColor: Colors.black,
                              iconDisabledColor: Colors.grey,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              width: 280,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white,
                              ),
                              offset: const Offset(-20, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all<double>(6),
                                thumbVisibility:
                                    MaterialStateProperty.all<bool>(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                              padding: EdgeInsets.only(left: 20, right: 20),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            const Gap(30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Mobile Money Number',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
            const Gap(10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500)),
                    decoration: const InputDecoration(
                      labelText: 'enter mobile money number',
                      contentPadding: EdgeInsets.all(20),
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(78, 81, 86, 1), fontSize: 16.0),
                    ),
                  ),
                )),
            const Gap(250),
            MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
                },
                color: const Color.fromRGBO(30, 73, 57, 1),
                height: 40.0,
                minWidth: 350,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Text(
                  'Save',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
