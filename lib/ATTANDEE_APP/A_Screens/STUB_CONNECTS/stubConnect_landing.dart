import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/STUB_CONNECTS/popup_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/STUB_CONNECTS/profileEdite_page.dart';

import '../../../main.dart';

class StubConnectLanding extends StatefulWidget {
  const StubConnectLanding({super.key});

  @override
  State<StubConnectLanding> createState() => _StubConnectLandingState();
}

class _StubConnectLandingState extends State<StubConnectLanding> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              top: mQuery.size.height*0.16,
              left: -mQuery.size.width*0.04,
              child: const CircleAvatar(
                radius: 36,
              )
          ),

          Positioned(
              top: mQuery.size.height*0.06,
              left: mQuery.size.width*0.38,
              child: const CircleAvatar(
                radius: 36,
              )
          ),
          Positioned(
              top: mQuery.size.height*0.18,
              right : mQuery.size.width*0.038,
              child: const CircleAvatar(
                radius: 36,
              )
          ),

          Positioned(
              top: mQuery.size.height*0.22,
              left : mQuery.size.width*0.43,
              child:  Image.asset("Assets/Images/Icon/stubguys.png",
                width: 42,
              )
          ),

          Positioned(
              top: mQuery.size.height*0.285,
              left : mQuery.size.width*0.36,
              child:  const Column(
                children: [
                  Text("StubGuys",style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SatoshiBold'
                  ),),
                ],
              )
          ),

          Positioned(
              top: mQuery.size.height*0.285,
              left : mQuery.size.width*0.36,
              child:  const Column(
                children: [
                  Text("StubGuys",style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SatoshiBold'
                  ),),
                ],
              )
          ),

          Positioned(
              top: mQuery.size.height*0.35,
              left : mQuery.size.width*0.18,
              child:  const Text("Find New Friends",style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff201335)
              ),)
          ),

          Positioned(
              top: mQuery.size.height*0.4,
              left : mQuery.size.width*0.17,
              child:  const Text("And Connect with",style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff201335)
              ),)
          ),

          Positioned(
              top: mQuery.size.height*0.45,
              left : mQuery.size.width*0.265,
              child:  const Text("Professionals",style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff201335)
              ),)
          ),


          Positioned(
              top: mQuery.size.height*0.45,
              left : mQuery.size.width*0.265,
              child:  const Text("Professionals",style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff201335)
              ),)
          ),

          Positioned(
            top: mQuery.size.height*0.53,
            left : mQuery.size.width*0.127,
            child: GestureDetector(
              onTap: ()
              {

                Navigator.push(context, MaterialPageRoute(builder: (context){
                  // return ConnectsPage();
                  return PopUpPage();
                }));
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                ),
                height: mQuery.size.height*0.06,
                margin: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.22
                ),
                decoration: BoxDecoration(
                    color: Color(0xff201335),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: const Center(
                  child: Text("Get Started",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xffF1F1F2)
                  ),),
                ),
              ),
            ),
          ),

          Positioned(
            top: mQuery.size.height*0.61,
            left : mQuery.size.width*0.35,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_left,
                  size: 30,
                ),
                SizedBox(width: mQuery.size.width*0.03),
                const Text("Go Back",style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'SatoshiBold'
                ),)
              ],
            ),
          ),

          Positioned(
              top: mQuery.size.height*0.68,
              left: mQuery.size.width*0.07,
              child: const CircleAvatar(
                radius: 36,
              )
          ),
          Positioned(
              top: mQuery.size.height*0.7,
              right : mQuery.size.width*0.038,
              child: const CircleAvatar(
                radius: 36,
              )
          ),


        ],
      ),
    );
  }

}
