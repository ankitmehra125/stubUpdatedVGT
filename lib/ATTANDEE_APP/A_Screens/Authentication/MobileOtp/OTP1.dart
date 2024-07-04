import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/OTP.dart';

class OTP1 extends StatefulWidget {
  const OTP1({Key? key}) : super(key: key);

  @override
  State<OTP1> createState() => _OTP1State();
}

class _OTP1State extends State<OTP1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String selectedCountryCode = 'US'; // Default country code
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle back button press here (exit the app)
        SystemNavigator.pop();
        return true; // Return true to exit the app
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black), // Back button color
          elevation: 0, // No shadow
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'OTP verification',
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 24.0,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'Please enter your country and your phone number.',
                    style: TextStyle(
                      color: Color(0xFF696D61),
                      fontSize: 13.0,
                      fontFamily: 'SatoshiRegular',
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: Color(0xFFF1F1F2),
                            width: 1.0,
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: CountryCodePicker(
                            onChanged: (countryCode) {
                              setState(() {
                                selectedCountryCode = countryCode.code!;
                              });
                            },
                            initialSelection: selectedCountryCode,
                            favorite: ['US'],
                            showCountryOnly: true,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                            textStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            flagWidth: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Material(
                          color: Colors.transparent,
                          child: TextFormField(
                            controller: _phoneNumberController,
                            keyboardType: TextInputType.phone,
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter Phone Number',
                              hintStyle: const TextStyle(
                                color: Color(0xFF5E6258),
                                fontFamily: 'SatoshiMedium',
                                fontSize: 16.0,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                                borderSide: const BorderSide(
                                  color: Color(0xFFF1F1F2),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                                borderSide: const BorderSide(
                                  color: Color(0xFFF1F1F2),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Phone Number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => otp()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: const Color(0xFF8DC73F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      minimumSize: const Size(390.0, 55.0),
                    ),
                    child: Container(
                      width: 390.0,
                      height: 55.0,
                      alignment: Alignment.center,
                      child: const Text(
                        'Get OTP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




