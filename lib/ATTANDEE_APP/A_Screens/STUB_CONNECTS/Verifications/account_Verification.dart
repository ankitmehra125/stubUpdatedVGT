import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';
import 'dart:io';

import '../stub_connect_custom_widgets/custom_banner_widgets.dart';

class AccountVerification extends StatefulWidget {
  const AccountVerification({super.key});

  @override
  State<AccountVerification> createState() => _AccountVerificationState();
}

class _AccountVerificationState extends State<AccountVerification> {
  var userName = "Cavil Inwang";
  var subName = "@cavilinwang";
  var percent = 60;

  final ImagePicker _imagePicker = ImagePicker();
  XFile? _pickedImage;


  Future<void> _pickImage() async {
    final imageSource = await showModalBottomSheet<ImageSource>(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text(
                  'Camera',
                  style: TextStyle(
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
                onTap: () => Navigator.of(context).pop(ImageSource.camera),
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text(
                  'Gallery',
                  style: TextStyle(
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
                onTap: () => Navigator.of(context).pop(ImageSource.gallery),
              ),
            ],
          ),
        );
      },
    );

    if (imageSource != null) {
      final pickedImage = await _imagePicker.pickImage(source: imageSource);

      if (pickedImage != null) {
        setState(() {
          _pickedImage = pickedImage;
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    requestCameraPermission(context);


  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      requestCameraPermission(context);
   //   accessCameraDialog(context);
      continueDialog(context);
    });

  }


  void requestCameraPermission(BuildContext context) async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      // The permission is already granted
      accessCameraDialog(context);
    } else if (status.isDenied) {
      // The permission is denied (should show a dialog to ask for the permission)
      if (await Permission.camera.request().isGranted) {
        // The permission is granted after requesting
        accessCameraDialog(context);
      } else {
        // The permission is denied after requesting
      }
    } else if (status.isPermanentlyDenied) {
      // The permission is permanently denied (user needs to enable it from settings)
    }
  }

  void accessCameraDialog(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Keep the border radius as specified
          ),
          child: Container(
            width: mQuery.size.width * 0.95, // Set the desired width
            height: mQuery.size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.white, // Set the background color to white
              borderRadius: BorderRadius.circular(15.0), // Ensure border radius is applied
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mQuery.size.height * 0.035),
                const Center(
                  child: Text(
                    "“StubGuys” Would Like to",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SatoshiBold',
                      fontSize: 16,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Access the Camera",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SatoshiBold',
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.04),
                const Center(
                  child: Text(
                    "Allow access to use camera-based",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "features on StubGuys, including taking",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "profile photos and video chatting.",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                ),
                Spacer(),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: mQuery.size.width*0.385,
                      height: mQuery.size.height*0.075,
                      decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Color(0xffEEEEEE)),
                            right: BorderSide(color: Color(0xffEEEEEE)),
                          )
                      ),
                      child: const Center(
                        child: Text("Don’t allow",style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff1A86EA)
                        ),),
                      ),
                    ),
                    Container(
                      width: mQuery.size.width*0.35,
                      height: mQuery.size.height*0.075,
                      decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Color(0xffEEEEEE)),
                          )
                      ),
                      child: const Center(
                        child: Text("Allow",style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff1A86EA)
                        ),),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        );
      },
    );
  }
  void continueDialog(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Keep the border radius as specified
          ),
          child: Container(
            width: mQuery.size.width * 0.95, // Set the desired width
            height: mQuery.size.height * 0.6,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white, // Set the background color to white
              borderRadius: BorderRadius.circular(15.0), // Ensure border radius is applied
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mQuery.size.height * 0.055),
                Center(
                  child: Text(
                    "Before you continue...",
                    style: TextStyle(
                      color: Color(0xff201335),
                      fontFamily: 'SatoshiBold',
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.04),
                Text(
                  "Prep your lighting",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: mQuery.size.width * 0.016),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "• Choose a well-lit environment",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SatoshiMedium',
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "• Turn up your brightness",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SatoshiMedium',
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "• Do not put on a face cap",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SatoshiMedium',
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff696D61)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Add your upgrade profile logic here
                    },
                    child: Text(
                      'Maybe later',
                      style: TextStyle(
                        color: Color(0xff696D61),
                        fontSize: 15,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.032),
              ],
            ),
          ),
        );
      },
    );
  }

  int _current = 0;
  final List<Map<String, String>> banners = [
    {
      'title': 'Professional Matchmaking',
      'description': 'Connect with like-minded individuals based on\nshared interests and passions.',
      'color': '0xFFe57373'
    },
    {
      'title': 'Event Networking',
      'description': 'Expand your professional network by connecting with\nfellow event participants',
      'color': '0xFF81c784'
    },
    {
      'title': 'Career Connections',
      'description': 'Forge valuable career connections with like-minded\nprofessionals at events',
      'color': '0xFF64b5f6'
    },
  ];

  List<Widget> generateBanners() {
    return banners
        .map((banner) => CustomBanner(
      title: banner['title']!,
      description: banner['description']!,
      backgroundColor: Color(int.parse(banner['color']!)),
    ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xff201335),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: mQuery.size.height*0.58,
              padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.045
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back,color: Colors.white,),
                          Container(
                            width: mQuery.size.width * 0.3,
                            height: mQuery.size.height * 0.3,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 3, color: Color(0xff8DC73F)),
                            ),
                            child: Center(
                              child: Container(
                                width: mQuery.size.width * 0.25,
                                height: mQuery.size.height * 0.23,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child : _pickedImage != null ?
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: FileImage(File(_pickedImage!.path)),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )

                                      : ProfilePicture(
                                    name: '',
                                    radius: 50,
                                    fontsize: 10,
                                    img:
                                    "https://s3-alpha-sig.figma.com/img/d843/5f38/c36b32c209dffed905fd1cdb0c106ff8?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JStYxulIRDtwZ0Bu1pOp-SAh3ywxUh~FT0NdjnySbBsD9A~tTK9JikJDBEXkv-5n6bWGHfDUd5awcOg41IKRQTh5pWI1~aZ4OsKrMJ4wGICDl9B2lHuRpHB7fzXhPDW3L8JYdsQI~25d3sDn1ji07NEo95Jv7dBbodfiovAEEf0Ro2selA3ErI9SsSwlBdPbyHiUKrfQuQaSqoLI0v65Yn"
                                        "u4nSG9BtIBFNpUrvd8jkp1BsjoiweD5xnDHJV7zjefnjD119aopibjebBEL-WhkTTxkn8g0ITGjYjrcrJcwXlppiUv2Etx7unm6bHt9T6gJH8q1BLHYHtxl2JdEtoMHg__",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SvgPicture.asset("Assets/Images/mdi_badge.svg")
                        ],
                      ),
                      Positioned(
                        top: mQuery.size.height*0.21,
                        left: mQuery.size.width*0.27,
                        child: Column(
                          children: [
                            Container(
                              width: mQuery.size.width*0.3,
                              height: mQuery.size.height*0.03,
                              decoration: BoxDecoration(
                                  color: Color(0xff8DC73F),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text("$percent% COMPLETE",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'SatoshiMedium'
                                ),),
                              ),
                            ),
                            Text("$userName",style: TextStyle(
                                color: Color(0xffF9F9F9),
                                fontSize: 24,
                                fontFamily: 'SatoshiBold'
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),

                  Text("$subName",style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SatoshiBold'
                  ),),
                  SizedBox(height: mQuery.size.height*0.02),
                  Center(
                    child: Container(
                      width: mQuery.size.width*0.46,
                      height: mQuery.size.height*0.055,
                      decoration: BoxDecoration(
                        color: Color(0xff8DC73F),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("Assets/Images/solar_pen-2-bold.svg"),
                          SizedBox(width: mQuery.size.width*0.01,),
                          Text("Preview  Profile",style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'SatoshiBold'
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.032,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: ()
                              {
                                _pickImage();
                              },
                              child: SvgPicture.asset("Assets/Images/cirularCamera.svg")),
                          SizedBox(height: mQuery.size.height*0.016,),
                          Text("Add Media",style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'SatoshiBold'
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset("Assets/Images/circularEdit.svg"),
                          SizedBox(height: mQuery.size.height*0.016,),
                          Text("Edit Information",style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'SatoshiBold'
                          ),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: mQuery.size.height*0.12,),
                    // Column(
                    //   children: [
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         SvgPicture.asset("Assets/Images/iconPark.svg"),
                    //         SizedBox(width: mQuery.size.width*0.023,),
                    //         Text("Professional Matchmaking",style: TextStyle(
                    //           fontSize: 20,
                    //           fontFamily: 'SatoshiBold',
                    //           color: Colors.black
                    //         ),)
                    //
                    //       ],
                    //     ),
                    //     Text("Connect with like-minded individuals based on",style: TextStyle(
                    //         color: Colors.black,
                    //         fontFamily: 'SatoshiMedium'
                    //     ),),
                    //     Text("shared interests and passions.",style: TextStyle(
                    //         color: Colors.black,
                    //         fontFamily: 'SatoshiMedium'
                    //     ),
                    //     ),
                    //   ],
                    // ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.25,
                      child: Stack(
                        children: [
                          CarouselSlider(
                            items: generateBanners(),
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2.0,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              },
                            ),
                          ),
                          Positioned(
                            top: 80,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: banners.map((url) {
                                int index = banners.indexOf(url);
                                return Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == index
                                        ? Color.fromRGBO(0, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 20,
                            right: 20,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: mQuery.size.height*0.065,
                              decoration: BoxDecoration(
                                  color: Color(0xff201335),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text("My Connects",style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'SatoshiBold',
                                    color: Color(0xffF1F1F2)
                                ),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),



                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
