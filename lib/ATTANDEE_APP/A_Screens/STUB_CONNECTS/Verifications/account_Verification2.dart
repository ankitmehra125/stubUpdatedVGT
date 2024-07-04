import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';
import 'dart:io';

class AccountVerification2 extends StatefulWidget {
  const AccountVerification2({super.key});

  @override
  State<AccountVerification2> createState() => _AccountVerification2State();
}

class _AccountVerification2State extends State<AccountVerification2> {
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
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xff201335),
      body: Column(
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
          Expanded(
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child : Column(
                  children: [
                    SizedBox(height: mQuery.size.height*0.12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("Assets/Images/iconPark.svg"),
                        SizedBox(width: mQuery.size.width*0.023,),
                        Text("Event Networking",style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SatoshiBold',
                            color: Colors.black
                        ),)
                      ],
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Expand your professional network by connecting with",style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'SatoshiMedium'
                          ),),
                          Text("fellow event participants",style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'SatoshiMedium'
                          ),
                          ),
                          SizedBox(height: mQuery.size.height*0.055,),
                          Container(
                            width: mQuery.size.width*0.45,
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
                          )
                        ],
                      ),
                    )
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
