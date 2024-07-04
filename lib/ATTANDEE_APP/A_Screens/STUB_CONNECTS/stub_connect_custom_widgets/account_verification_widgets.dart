
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountVerificationWidgets extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;
  final String linkText;
  final String linkUrl;
  final String agreeButtonText;
  final String maybeLaterButtonText;
  final VoidCallback onAgree;
  final VoidCallback onMaybeLater;

  AccountVerificationWidgets({
    required this.iconPath,
    required this.title,
    required this.description,
    required this.linkText,
    required this.linkUrl,
    required this.agreeButtonText,
    required this.maybeLaterButtonText,
    required this.onAgree,
    required this.onMaybeLater,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            iconPath,
            width: 50,
            height: 50,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              color: Color(0xff201335),
              fontFamily: "SatoshiBold"
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width*0.7,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff000000),
                  fontFamily: "SatoshiRegular",
                height: 1.5
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onTap: () async {
                if (await canLaunch(linkUrl)) {
                  await launch(linkUrl);
                } else {
                  throw 'Could not launch $linkUrl';
                }
              },
              child: Text(
                linkText,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff201335),
                  fontFamily: "SatoshiBold",
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: <Widget>[
              InkWell(
                onTap: onAgree,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff201335),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(agreeButtonText,style: const TextStyle(color: Color(0xffF1F1F2),fontSize: 16,fontFamily: "SatoshiBold"),textAlign: TextAlign.center,),
                ),
              ),

              SizedBox(height: 10),
              InkWell(
                onTap: onMaybeLater,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color:Color(0xff696D61),width: 1 ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(maybeLaterButtonText,style: const TextStyle(color: Color(0xff696D61),fontSize: 16,fontFamily: "SatoshiBold"),textAlign: TextAlign.center,),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
