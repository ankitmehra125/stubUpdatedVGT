import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/Login.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Authentication/MobileOtp/OTP1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/Attendee_bloc/auth/auth_bloc.dart';
import 'package:stub_guys/ATTANDEE_APP/Attendee_bloc/auth/auth_event.dart';
import 'package:stub_guys/ATTANDEE_APP/Attendee_bloc/auth/auth_state.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<bool> _onWillPop() async {
    return true; // Returning true allows the app to exit
  }

  void createAccount(AuthBloc service) {
    if (_fullNameController.text.isEmpty) {
      _showError('Please enter your full name');
      return;
    }
    if (_emailController.text.isEmpty) {
      _showError('Please enter your email');
      return;
    }
    if (_passwordController.text.isEmpty) {
      _showError('Please enter your password');
      return;
    }
    
    service.add(SignupEvent(_fullNameController.text, _emailController.text, _passwordController.text));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const OTP1()),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 3),
        backgroundColor: Color(0xffededed),
        content: Text(message,style: TextStyle(
          color: Colors.red,
          fontFamily: 'SatoshiMedium'
        ),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var service=BlocProvider.of<AuthBloc>(context);
    return WillPopScope(
      onWillPop: () async
      {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocListener<AuthBloc, AuthState>(
  listener: (context, state) {

  },
  child: Stack(
          children: [
            // Background Image with 40% from the top
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Image.asset(
                'Assets/Images/Login.jpg',
                fit: BoxFit.cover,
              ),
            ),
            // White Container with Login and Password
            // Positioned with top left and top right border radius
            Positioned(
              top: MediaQuery.of(context).size.height * 0.24,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      const Text(
                        'Create an account',
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 24.0,
                          fontFamily: 'SatoshiBold',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                          right: MediaQuery.of(context).size.width * 0.05,
                        ),
                        child: Column(
                          children: [
                            TextField(
                              controller: _fullNameController,
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                labelText: 'Full name',
                                labelStyle: TextStyle(
                                  fontFamily: 'SatoshiMedium',
                                  color: Color(0xFF696D61),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF696D61),
                                    width: 0.9,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF696D61),
                                    width: 0.9,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.005,
                            ),
                            TextField(
                              controller: _emailController,
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  fontFamily: 'SatoshiMedium',
                                  color: Color(0xFF696D61),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF696D61),
                                    width: 0.9,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF696D61),
                                    width: 0.9,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.005,
                            ),
                            TextField(
                              obscureText: true,
                              cursorColor: Colors.grey,
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  fontFamily: 'SatoshiMedium',
                                  color: Color(0xFF696D61),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF696D61),
                                    width: 0.9,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF696D61),
                                    width: 0.9,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            ElevatedButton(
                              onPressed: (){
                                createAccount(service);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero, backgroundColor: const Color(0xFF8DC73F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minimumSize: const Size(390.0, 55.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 55.0,
                                alignment: Alignment.center,
                                child: const Text(
                                  'Create an account',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.39,
                                  child: const Divider(
                                    color: Color.fromARGB(255, 205, 205, 205),
                                    thickness: 1,
                                  ),
                                ),
                                const Text(
                                  "   or   ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    height: 22 / 16,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.39,
                                  child: const Divider(
                                    color: Color.fromARGB(255, 205, 205, 205),
                                    thickness: 1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.025,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("Assets/Images/Icon/facebook.jpg"),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset("Assets/Images/Icon/google.jpg"),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset("Assets/Images/Icon/apple.jpg"),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.075,
                decoration: const BoxDecoration(
                  color: Color(0xFFDEFBB8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 22 / 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 22 / 16,
                          color: Color(0xff8dc73f),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
),
      ),
    );
  }
}
