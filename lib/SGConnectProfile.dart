import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/STUB_CONNECTS/Verifications/account_Verification.dart';

import 'ATTANDEE_APP/A_Screens/STUB_CONNECTS/stub_connect_custom_widgets/account_verification_widgets.dart';
import 'ATTANDEE_APP/A_Screens/STUB_CONNECTS/stub_connect_custom_widgets/profile_image_card.dart';

class SGConnectProfile extends StatefulWidget {
  const SGConnectProfile({Key? key}) : super(key: key);

  @override
  State<SGConnectProfile> createState() => _SGConnectProfileState();
}

class _SGConnectProfileState extends State<SGConnectProfile> {
  TextEditingController storeNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController gstinController = TextEditingController();

  final Map<String, String> userFeature = {
    'Display Name': 'Felix Oshimen',
    'Job Title': 'Business Owner/Event Planner',
  };

  final Map<String, String> moreFeature = {
    'Location': 'Austin, Texas',
    'Education': 'Yale University',
    'Zodiac': 'Capricorn',
    'Friendship Goals': 'Longterm, Short-term',
    'Height': '183cm',
    'Languages Spoken': 'English, French',
    'Family Plans': 'I want children',
    'COVID Vaccine': 'Vaccinated',
  };

  final List<Map<String, String>> interestData = [
    {"text": "Freelance"},
    {"text": "Business"},
    {"text": "Lifestyle"},
  ];
  final List<Map<String, String>> profileImages = [
    {"image": "https://s3-alpha-sig.figma.com/img/fa04/fe3c/5edebc680e0a44b0c5cdc6b9b4557dc8?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IDqik2MxGvoOs3u4KH9w4FIrXfuO~SQYNJl2H3aNRplNUTWF3sMw8GIhApNroMlD85bNBmOODtt6w6uO7imc8gLdFVGKJb7TIu8dz5V1XbSw3VLE-veUYLUg9fO2Bv5p5yB-cCHlRjAwMMvA16SJnZl9E66C1YcMSYpRdph4K2BiD0IWCeiBa12sVbIjTnk2OOkU2XpxwZXaEjxfiXw8SMYdcenyLV41sMhDIaJKzIZsotxSh6DGcux5KPNCtDmQ0o7F1eiA5SaqSRC5n5UFv7JBQwUQkpd1T3LASRrl~0ezMaTcvY1b3KKQvURH9og6K44A0k3gwpnKypFSAvwtJw__"},
    {"image": "https://s3-alpha-sig.figma.com/img/e327/de92/76388e8a5ccf3cff474b2bf059c524d0?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=U~hODU53kS1347FzwXmQqnOo3nVizWVR~TOa0Gw3ptrPU3c32bNSCAnKuvJHq5hGgTmR-2HmKaLffaurRQ3gltTDMLf-IPS39iN7RHbHTjdQhZULc3Rg9tZ8RwXrd9k7IJrOzAWPkDi7PMRmvfeepnu2eaPSRPTCL2pZjxnDW5M6Jf~xOdHRXmkYxfSodonIdkkfc7bzzoXH~OLwOordvwVAEy8Di9x~sdfnbQ~-lJiLzX66xBu2mqyxXz28JTVeXUD3ORK6iiPHI2q5d4nh~S5CYQhtC20rErFTKSN-eLLTiFvbDiF8lvaYMaeyaNRMSyjOwEqqgWVZtxKMy1ZneQ__"},
    {"image": "https://s3-alpha-sig.figma.com/img/99c4/f8b3/efbde1a50ac4571534957820ee118e54?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YX-D7vuH6UV5R9gCDJMbajhBXGJFVq-gTVfYntRnSyMNqaoURhZAa2G-lytsmTNC8xo4cnH1tmRKjgYbRIivSHyOW3P84wm0869vfqQ-CnJoTQBm4QDQGC2JC~4V9rULN2SpZmk18JPEdYHWoFipIP7dxLOiT0RB2GbJP92uVZ1Z6KiZfnDcEn4ICx~D5e0HebdRNegEsWbyArHEoKmmkaLr4tr5FFigaq7dnNM7ljnsvM3AK3t6j00wz5M0P9FXHz7J~7RNrJnWbQTGpE2kxWaEhvtFDo9DWf0J8x5eSCs4gxJT~rmSw5nDI~C8QL1wzUD06t4FnNq51CKF8qfnBg__"},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showCustomDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color(0xff201335)));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff201335),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
            
                Container(
                  child: Column(
                    children: [
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(){
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Icon(
                              Icons.flag_outlined,
                              color: Color(0xffF24E1E),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height*0.2,
                                child: Stack(
                                  children: <Widget>[
                                    // Background image
                                    const Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 20,
            
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/c9f7/1045/ad115c30d06ddda234c6ce0a1f165300?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ntaFAmHimH8FI1wflwUwE6eF3z~ZgSLjvgv4EJM2-Dd7qf9mXM93r~jzxjr8hOmEi-EZsMGtqCBkptW3suI76UvfgOX7df6W19p9JU0Li-B5ViF-UC22DDog68nROZbJyFI-WskzhZhCLQyqGlROLw3KQc0uUtws2qEiTMTmkRUUPC6x0fUOu3OP0mvJLlzxUYAr1MaxfnyjbJlCDUHFSrl1XQDwXeSPHkg4c2AnHScfoOrMuzp8pI6LVgidZcuKtNjBq6R24Ul9XE8uhvZH9UuchzVUB6OD1PomzgG9DuHwoWDOl2F~V1RV4OKDHpitDWVjomjPmNpV4XXwE7-XcA__'),
                                        ),
                                      ),
                                    ),
            
                                    SvgPicture.asset(
                                      "Assets/Images/sgprofile.svg",
                                      width: 250,
                                      height: 200,
                                    ),
                                  ],
                                ),
                              ),
                            //  SvgPicture.asset("Assets/Images/sgprofile.svg"),
                              SizedBox(
                                height: mQuery.size.height * 0.02,
                              ),
                              const Text(
                                "Sandra Oshimen",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'SatoshiBold',
                                  height: 1.1,
                                ),
                              ),
                              SizedBox(
                                height: mQuery.size.height * 0.01,
                              ),
                              const Text(
                                "@sandraoshimen",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xFF8F899A),
                                  fontSize: 14,
                                  fontFamily: 'SatoshiBold',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.04,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset("Assets/Images/redcross.svg"),
                            SvgPicture.asset("Assets/Images/call.svg"),
                            SvgPicture.asset("Assets/Images/chat.svg"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.3,
                        blurRadius: 1,
                        offset: const Offset(
                            3, 3), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: userFeature.length,
                          itemBuilder: (context, index) {
                            final key = userFeature.keys.elementAt(index);
                            final value = userFeature[key];
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    key,
                                    style: const TextStyle(
                                      color: Color(0xFFD3D3D3),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                      height: 1.1,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    value ?? '',
                                    style: const TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 20,
                                      fontFamily: 'SatoshiBold',
                                      height: 1.1,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Interests",
                                style: TextStyle(
                                  color: Color(0xFFD3D3D3),
                                  fontSize: 14,
                                  fontFamily: 'SatoshiMedium',
                                  height: 1.1,
                                ),
                              ),
                              SizedBox(
                                height: mQuery.size.height * 0.02,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: interestData.map((data) {
                                    return CustomContainer(text: data['text']!);
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child:   Column(
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Photo Gallery",style: TextStyle(fontFamily: "SatoshiMedium",color: Color(0xffD3D3D3)),),
                                  Text("Photo Gallery",style: TextStyle(fontFamily: "SatoshiMedium",color: Color(0xff8DC73F)),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: profileImages.map((data) {
                                    return ProfileImageCard(image: data['image']!,size: MediaQuery.of(context).size,);
                                  }).toList(),
                                ),
                              ),

                            ],
                          ),
                        ),

                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: moreFeature.length,
                          itemBuilder: (context, index) {
                            final key = moreFeature.keys.elementAt(index);
                            final value = moreFeature[key];
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    key,
                                    style: const TextStyle(
                                      color: Color(0xFFD3D3D3),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                      height: 1.1,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    value ?? '',
                                    style: const TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 20,
                                      fontFamily: 'SatoshiBold',
                                      height: 1.1,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),

                         Container(
                           margin: EdgeInsets.all(15),
                           child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.flag_outlined,color: Colors.red,),
                              SizedBox(width: 5,),
                              Text("Report this user",style: TextStyle(color: Color(0xffFF3D00),fontFamily: "SatoshiBold",fontSize: 16),)
                            ],
                                                   ),
                         )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AccountVerificationWidgets(
          iconPath: "Assets/Images/verified.png",
          title: "How it works",
          description: "We do not keep the underlying facial recognition information or “template” beyond the Photo Verification process (which is usually complete within 24 hours). We do not keep your video selfie.",
          linkText: "Find out more about how this works.",
          linkUrl: "https://your-link-here.com",
          agreeButtonText: "I agree",
          maybeLaterButtonText: "Maybe later",
          onAgree: () {
            print("hellow---");
            Navigator.of(context).pop();
            showAnotherDialog(context);
          },
          onMaybeLater: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
  void showAnotherDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AccountVerificationWidgets(
          iconPath: "Assets/Images/verified.png",
          title: "How can I unverify?",
          description: "If you wish to remove your Photo Verifieid badge, you may do so by deleting your account in Settings. Your facial geometry data will be purged along with your matches, messages and other info associated with your profile.",
          linkText: "Learn More",
          linkUrl: "https://your-link-here.com",
          agreeButtonText: "I understood",
          maybeLaterButtonText: "Maybe later",
          onAgree: () {
            // Handle "I agree" action
            Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountVerification()));

          },
          onMaybeLater: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }


}

class CustomContainer extends StatelessWidget {
  final String text;

  const CustomContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF696D61),
            fontSize: 16,
            fontFamily: 'SatoshiBold',
            height: 1.1,
          ),
        ),
      ),
    );
  }


}
