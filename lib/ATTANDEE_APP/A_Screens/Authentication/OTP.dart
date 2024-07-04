import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/Components/Timer.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/PickInterest/picInterest.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

const mailId = "test@gmail.com";
bool isOtp = false;

class _otpState extends State<otp> {
  String _enteredOtp = '';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
       SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'We sent you a 4-digit code',
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 24.0,
                    fontFamily: 'SatoshiBold',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 13.0,
                    ),
                    children: [
                      TextSpan(
                        text:
                        'Enter the 4-digit OTP code sent to your phone number ',
                        style: TextStyle(
                          color: Color(0xFF696D61),
                          fontSize: 13.0,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                      TextSpan(
                        text: '+1 805 238 205 ',
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 13.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                      TextSpan(
                        text: 'change phone number.',
                        style: TextStyle(
                          color: Color(0xFF8DC73F),
                          fontSize: 13.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Center(child: TimerApp()),
                const SizedBox(
                  height: 30,
                ),
                OtpTextField(
                  numberOfFields: 4,
                  showFieldAsBox: true,
                  fieldWidth: 70,
                  focusedBorderColor: Color(0xFF8DC73F),
                  enabledBorderColor: Color(0xFFF1F1F2),
                  onCodeChanged: (String code) {
                    // Handle validation or checks here
                  },
                  onSubmit: (String verificationCode) {
                    setState(() {
                      _enteredOtp = verificationCode;
                      isOtp = true;
                    });
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_enteredOtp.length == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const picInterest()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Color(0xffededed),
                          content: Text('Please Enter OTP',style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            color: Colors.red
                          ),),
                        ),
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
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    "Didn't receive the OTP? Resend",
                    style: TextStyle(
                      fontFamily: "Satoshi",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8dc73f),
                      height: 38 / 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
