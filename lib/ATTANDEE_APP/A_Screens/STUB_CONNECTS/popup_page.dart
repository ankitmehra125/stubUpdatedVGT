import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/STUB_CONNECTS/profileEdite_page.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/STUB_CONNECTS/stub_connected_data/stub_data.dart';
import 'package:stub_guys/SGConnectProfile.dart';

class PopUpPage extends StatefulWidget {
  const PopUpPage({super.key});

  @override
  State<PopUpPage> createState() => _PopUpPageState();
}

class _PopUpPageState extends State<PopUpPage> {
  int _currentIndex = 0;



  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % StubData.backgroundImages.length;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showUpgradeDialog(context);
    });
  }

  void showUpgradeDialog(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            width: mQuery.size.width * 0.9, // Set the desired width
            height: mQuery.size.height*0.4,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: mQuery.size.height*0.032,),
                Center(child: SvgPicture.asset("Assets/Images/alert-square.svg")),
                SizedBox(height: mQuery.size.height*0.032,),
                const Text(
                  'Profile upgrade required to use',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff201335),
                  ),
                ),
                const Text(
                  'StubConnect',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff201335),
                  ),
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.045
                  ),
                  decoration:  BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileEditePage()));
                    },
                    child: const Text(
                      'Upgrade Profile',
                      style: TextStyle(color: Colors.white,
                          fontFamily: 'SatoshiBold'),
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height*0.032,)
              ],
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: mQuery.size.height*0.36,
              color: Color(0xff8DC73F),
              child: Column(
                children: [
                  SizedBox(height: mQuery.size.height*0.12,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.045
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('Assets/Images/Components/BottomNavigationBar/stubconnect.svg',),
                        SizedBox(width: mQuery.size.width*0.033,),
                        const Text("StubConnect",style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xfff9f9f9)
                        ),),
                        Expanded(child: SizedBox()),
                        SvgPicture.asset('Assets/ORGANISER_APP/Images/O_Profile/bellRing.svg',),
                        SizedBox(width: mQuery.size.width*0.033),
                        SvgPicture.asset('Assets/ORGANISER_APP/Images/O_Profile/circularSetting.svg',),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SGConnectProfile()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(StubData.backgroundImages[_currentIndex]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                  ],),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text("Sandra Oshimen",style: TextStyle(color: Colors.white,fontSize: 22,fontFamily: "SatoshiBold"),),
                              Icon(Icons.check_circle,color: Colors.green,)
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(Icons.home_repair_service_rounded,color: Colors.white,),
                                Text("CEO/Business Owner",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: "SatoshiMedium"),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            const Text("I like meeting new friends.",style: TextStyle(color: Colors.white,fontSize: 10,fontFamily: "SatoshiRegular"),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.refresh,color: Colors.white,),
                                  onPressed: () {
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.call,color: Colors.green,),
                                  onPressed: () {
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.chat,color: Colors.white,),
                                  onPressed: () {
                                    _showMessageBottomSheet(context);
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.cancel_outlined,color: Colors.red,),
                                  onPressed: () {
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  void _showMessageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Send a Message',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Hello, I would like to connect with you.',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // Add your message sending logic here
                    },
                  ),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

}
