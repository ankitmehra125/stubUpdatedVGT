import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/svg.dart';

class NoOngoingEvent extends StatefulWidget {
  const NoOngoingEvent({super.key});

  @override
  State<NoOngoingEvent> createState() => _NoOngoingEventState();
}

class _NoOngoingEventState extends State<NoOngoingEvent> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: mQuery.size.height*0.17,
            padding: EdgeInsets.only(
              top: mQuery.size.height*0.055,
              left: mQuery.size.width*0.045,
              right : mQuery.size.width*0.045,
            ),
            color: Color(0xff8DC73F),
            child: Row(
              children: [
                SvgPicture.asset('Assets/Images/Components/BottomNavigationBar/stubconnect.svg',),
                SizedBox(width: mQuery.size.width*0.033,),
                Text("StubConnect",style: TextStyle(
                  fontFamily: 'SatoshiBold',
                  color: Color(0xffF9F9F9),
                  fontSize: 24
                ),)
              ],
            ),
          ),
          SizedBox(height: mQuery.size.height*0.07),
          Container(
            width: mQuery.size.width*0.9,
            height: mQuery.size.height*0.4,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFCFCFC)
            ),
            child: Center(
              child: Container(
                width: mQuery.size.width*0.42,
                height: mQuery.size.height*0.4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffDEFBB8)
                ),
                child: Center(
                  child: Container(
                    width: mQuery.size.height*0.1,
                    height: mQuery.size.height*0.2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: ProfilePicture(
                        img: "https://s3-alpha-sig.figma.com/img/9014/0a82/ee42c76d3cc6414bdd585f90ea40d66e?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lT~Sh5ab5BEiMy3mNhpBlQzwJoqSZf58npBFOJiMoFNJDfQJt2c5Z~Rw~vWlKEazP26PWNnVBDunmwQ3-0xsIxq2d-K7EMbMUW2D1LnpE4ZAKle9P4htesouY4445Q0KZ7n7EYP-0jrCK0dy0NkgYyU6LCBxpfFg-YNl~YKD8dM59ktr~FodwlI0zjHo9hUzR5NPGpA2nCI4KMAQb6nQp6r09lpC7SChUeefpvD4bespy6HP4fP3o5dCtdjISv~eTjkoLz5-mFkjWN0T2C9ssuwurTi7Fizh8XUlD3fw2xJ0zpTdm-up2REYplykJpBqfPYhFKwKIUOGF6t5PMSGhQ__",
                        name: "",
                        radius: mQuery.size.height*0.05,
                        fontsize: 10,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: mQuery.size.height*0.023,),
          Center(
            child: Text("No events found or you haven't",style: TextStyle(
              fontSize: 16,
              fontFamily: 'SatoshiMedium',
              color: Color(0xff696D61)
            ),),
          ),
          Center(
            child: Text("checked in yet",style: TextStyle(
                fontSize: 16,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff696D61)
            ),),
          ),
          SizedBox(height: mQuery.size.height*0.04,),
          Container(
            width: double.infinity,
            height: mQuery.size.height*0.065,
            margin: EdgeInsets.symmetric(
              horizontal: mQuery.size.width*0.16
            ),
            decoration: BoxDecoration(
              color: Color(0xff201335),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Center(
              child: Text("Event Calendar",style: TextStyle(
                color: Color(0xffF1F1F2),
                fontSize: 16,
                fontFamily: 'SatoshiBold'
              ),),
            ),
          )
        ],
      ),
    );
  }
}
