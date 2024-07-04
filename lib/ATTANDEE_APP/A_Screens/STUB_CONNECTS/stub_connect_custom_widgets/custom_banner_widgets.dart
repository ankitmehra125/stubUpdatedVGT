import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBanner extends StatelessWidget {
  final String title;
  final String description;
  final Color backgroundColor;

  CustomBanner({
    required this.title,
    required this.description,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("Assets/Images/iconPark.svg"),
            SizedBox(width: 5,),
            //  SizedBox(width: mQuery.size.width*0.023,),
              Text(title,style: TextStyle(
                fontSize: 20,
                fontFamily: 'SatoshiBold',
                color: Colors.black
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(description,style: TextStyle(
                color: Colors.black,
                fontFamily: 'SatoshiMedium'
            ),
            textAlign: TextAlign.center,
            ),
          ),


        ],
      ),

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       title,
      //       style: TextStyle(
      //         fontSize: 24.0,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.white,
      //       ),
      //     ),
      //     SizedBox(height: 8.0),
      //     Text(
      //       description,
      //       style: TextStyle(
      //         fontSize: 16.0,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
