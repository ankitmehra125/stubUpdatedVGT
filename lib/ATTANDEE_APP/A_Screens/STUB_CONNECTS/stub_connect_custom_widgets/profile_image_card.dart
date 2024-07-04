import 'package:flutter/material.dart';
class ProfileImageCard extends StatelessWidget {
  String image;
  Size size;
   ProfileImageCard({super.key,required this.image,required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*0.25,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image)
        )
      )

    );
  }
}
